
library(M3Drop)
library(tidyverse)
library(RUVSeq)
library(statmod)


# Get HVG function  ----

BrenneckeGetVariableGenesMod <- function(expr_mat, spikes=NA, suppress.plot=FALSE, fdr=0.1, minBiolDisp=0.5, fitMeanQuantile=0.8) {
  #require(statmod)
  rowVars <- function(x) { unlist(apply(x,1,var, na.rm=TRUE))}
  colGenes <- "black"
  colSp <- "blue"
  fullCountTable <- expr_mat;
  if (is.character(spikes)) {
    sp <- rownames(fullCountTable) %in% spikes;
    countsSp <- fullCountTable[sp,];
    countsGenes <- fullCountTable[!sp,];
  } else if (is.numeric(spikes)) {
    countsSp <- fullCountTable[spikes,];
    countsGenes <- fullCountTable[-spikes,];
  } else {
    countsSp <- fullCountTable;
    countsGenes <- fullCountTable;
  }
  meansSp <- rowMeans(countsSp, na.rm=TRUE)
  varsSp <- rowVars(countsSp)
  cv2Sp <- varsSp/meansSp^2
  meansGenes <- rowMeans(countsGenes, na.rm=TRUE)
  varsGenes <- rowVars(countsGenes)
  cv2Genes <- varsGenes/meansGenes^2
  # Fit Model
  minMeanForFit <- unname( quantile( meansSp[ which( cv2Sp > 0.3 ) ], fitMeanQuantile))
  useForFit <- meansSp >= minMeanForFit
  if (sum(useForFit, na.rm=TRUE) < 20) {
    warning("Too few spike-ins exceed minMeanForFit, recomputing using all genes.")
    meansAll <- c(meansGenes, meansSp)
    cv2All <- c(cv2Genes,cv2Sp)
    minMeanForFit <- unname( quantile( meansAll[ which( cv2All > 0.3 ) ], 0.80))
    useForFit <- meansSp >= minMeanForFit
  }
  if (sum(useForFit, na.rm=TRUE) < 30) {warning(paste("Only", sum(useForFit), "spike-ins to be used in fitting, may result in poor fit."))}
  fit <- glmgam.fit( cbind( a0 = 5, a1tilde = 0.4/meansSp[useForFit] ), cv2Sp[useForFit] )
  a0 <- unname( fit$coefficients["a0"] )
  a1 <- unname( fit$coefficients["a1tilde"])
  res <- cv2Genes - (a0 + a1/meansGenes);
  # Test
  psia1theta <- a1
  minBiolDisp <- minBiolDisp^2
  m <- ncol(countsSp);
  cv2th <- a0 + minBiolDisp + a0 * minBiolDisp
  testDenom <- (meansGenes*psia1theta + meansGenes^2*cv2th)/(1+cv2th/m)
  p <- 1-pchisq(varsGenes * (m-1)/testDenom,m-1)
  padj <- p.adjust(p,"BH")
  sig <- padj < fdr
  sig[is.na(sig)] <- FALSE
  if (!suppress.plot) {
    plot( meansGenes,cv2Genes, xaxt="n", yaxt="n", log="xy",
          xlab = "average normalized read count",
          ylab = "squared coefficient of variation (CV^2)", col="white")
    axis( 1, 10^(-2:5), c( "0.01", "0.1", "1", "10", "100", "1000",
                           expression(10^4), expression(10^5) ) )
    axis( 2, 10^(-2:3), c( "0.01", "0.1", "1", "10", "100","1000" ), las=2 )
    abline( h=10^(-2:1), v=10^(-1:5), col="#D0D0D0", lwd=2 )
    # Plot the genes, use a different color if they are highly variable
    points( meansGenes, cv2Genes, pch=19, cex=.5,
            col = ifelse( padj < .1, "blue", colGenes ) )
    # Plot/highlight the spike-ins if they are different from the genes
    if (length(meansSp) < length(meansGenes)) {
      points(meansSp, cv2Sp, pch=20, cex=.6, col=colSp)
    }
    # Add the technical noise fit
    xg <- 10^seq( -2, 6, length.out=1000 )
    lines( xg, (a1)/xg + a0, col="red", lwd=3 )
    # Add a curve showing the expectation for the chosen biological CV^2 thershold
    lines( xg, psia1theta/xg + a0 + minBiolDisp, lty="dashed", col="purple", lwd=3)
  }
  TABLE <- data.frame(Gene = names(meansGenes), effect.size=res, p.value = p, q.value= padj, Mean=meansGenes, CV2=cv2Genes , 
                      TechNoise=(a1)/meansGenes+a0, BioVar=log2(cv2Genes/((a1)/meansGenes+a0)))
  TABLE <- TABLE[order(-TABLE[,2]),];
  return(list(data=TABLE,A0=a0,A1=a1))
}


# all ZT data preparation   ----

TPM <- read.table("TPM_14seedling.txt", header=TRUE, sep='\t')

data.info_TPM <- read.table("Extract_HVG_LVG_random/DataInfo_TPM_14seedling.txt",
                            header=TRUE,sep='\t',row.names=1)

# Keeping Spike-ins on a side
ERCC_TPM = filter(TPM, grepl("^ERCC",tracking_id))

# Selecting genes that are expressed
TPM_ave5 <-  filter(TPM, rowMeans(TPM[,2:169])>=5)

# Selecting genes that are longer than 150bp
Gene_size <- read.table("Extract_HVG_LVG_random/TAIR10_Gene_sizes.txt", header=TRUE, sep='\t')
Gene_size_bis <- Gene_size[,c(1,6)]
Genes_more150bp <- Gene_size_bis[Gene_size_bis$length>150,]




# ZT2   ----

### batch effect correction with RUV (k=2)

ERCC_ZT2 <- select (ERCC_TPM,tracking_id,contains("ZT2_"))

TPM_ZT2 <- select (TPM_ave5,tracking_id,contains("ZT2_"))

data.info_TPM_ZT2 <- data.info_TPM[data.info_TPM$ZT=="ZT2",]
x_ZT2<-as.factor(data.info_TPM_ZT2$ZT)

# Selecting genes that are expressed and longer than 150bp
TPM_ZT2$numZero <- rowSums(TPM_ZT2[2:15]<0.0001)
TPM_ZT2_Max7Zero <- filter(TPM_ZT2, numZero<5)

TPM_ZT2_Max7Zero <- TPM_ZT2_Max7Zero[,1:15]

TPM_ZT2_Max7Zero_ave5 <- filter(TPM_ZT2_Max7Zero, rowMeans(TPM_ZT2_Max7Zero[,2:15])>=5)

TPM_ZT2_Max7Zero_ave5_more150bp <- merge (TPM_ZT2_Max7Zero_ave5, Genes_more150bp, 
                                          by.x="tracking_id", by.y="gene_name" )

TPM_ZT2_Max7Zero_ave5_more150bp <- TPM_ZT2_Max7Zero_ave5_more150bp[,1:15]

TPM_ZT2_Max7Zero_ave5_more150bp <- rbind(TPM_ZT2_Max7Zero_ave5_more150bp, ERCC_ZT2)

TPM2_ZT2_Max7Zero_ave5_more150bp <- TPM_ZT2_Max7Zero_ave5_more150bp[,-1]

rownames(TPM2_ZT2_Max7Zero_ave5_more150bp) <- TPM_ZT2_Max7Zero_ave5_more150bp[,1]

TPM2_ZT2_Max7Zero_ave5_more150bp <- round(TPM2_ZT2_Max7Zero_ave5_more150bp)

TPM2_ZT2_Max7Zero_ave5_more150bp <- data.matrix(TPM2_ZT2_Max7Zero_ave5_more150bp[,1:14])

# Organising data for RUV
genes <- rownames(TPM2_ZT2_Max7Zero_ave5_more150bp)[grep("^AT",rownames(TPM2_ZT2_Max7Zero_ave5_more150bp))]

ERCC <- rownames(TPM2_ZT2_Max7Zero_ave5_more150bp)[grep("^ERCC",rownames(TPM2_ZT2_Max7Zero_ave5_more150bp))]


TPM_ZT2_RUV <- newSeqExpressionSet (as.matrix (TPM2_ZT2_Max7Zero_ave5_more150bp), 
                                    phenoData = data.frame (x_ZT2, row.names= colnames(TPM2_ZT2_Max7Zero_ave5_more150bp)))

# Running RUV (K=2) and extracting genes
TPM2_ZT2 <- RUVg(TPM_ZT2_RUV, ERCC, k=2)
TPM2_ZT2_genes <-TPM2_ZT2[genes]

## Identifying highly variable genes

HVG_ZT2_genes <- BrenneckeGetVariableGenesMod(normCounts(TPM2_ZT2_genes), minBiolDisp = 0.1, fdr=0.01)

ZT2_a0 <- HVG_ZT2_genes$A0 
ZT2_a1 <- HVG_ZT2_genes$A1 

data_ZT2 <- HVG_ZT2_genes$data

ZT2_highNoise <- filter(data_ZT2, q.value<0.01)

## Extracting random genes

ZT2_random <- data_ZT2[sample(nrow(data_ZT2),nrow(ZT2_highNoise)),]

## Identifying lowly variable genes: 1000 least variable genes

data_ZT2_orderedBioVar <- arrange(data_ZT2, BioVar)

ZT2_1000LVG <- data_ZT2_orderedBioVar[1:1000,]



## plot

plot( data_ZT2$Mean,data_ZT2$CV2, xaxt="n", yaxt="n", log="xy",
      xlab = "average normalized read count",
      ylab = "", pch=19, cex=.6, cex.lab=1.5)
axis( 1, 10^(-2:5), c( "0.01", "0.1", "1", "10", "100", "1000",
                       expression(10^4), expression(10^5) ) , cex.axis=1.1)
axis( 2, 10^(-2:3), c( "0.01", "0.1", "1", "10", "100","1000" ), las=2 , cex.axis=1.1)
points(ZT2_highNoise$Mean,ZT2_highNoise$CV2, col="blue", pch=19, cex=.6)
points(ZT2_1000LVG$Mean,ZT2_1000LVG$CV2, 
       col="green3", pch=19, cex=.6)
points(ZT2_random$Mean,ZT2_random$CV2, 
       col="grey", pch=19, cex=.6)
xg <- 10^seq( -2, 6, length.out=1000 )
lines( xg, (ZT2_a1)/xg + ZT2_a0, col="red", lwd=2 , lty=1)
mtext(expression(paste("squared coefficient of variation (CV^2)")), side=2, 
      cex=1.5, line=2.5)
