library(DESeq2)
library(ggplot2)

#Preparing data----------------------------------

finalcount = read.table("lab/rawdata/finalcountGithubGenesALL.txt",
                        header=TRUE, sep='\t')
col = colnames(finalcount)

ZT2 <- rep("ZT2", 14) #Create conditions for each timepoint
ZT4 <- rep("ZT4", 14)
ZT6 <- rep("ZT6", 14)
ZT8 <- rep("ZT8", 14)
ZT10 <- rep("ZT10", 14)
ZT12 <- rep("ZT12", 14)
ZT14 <- rep("ZT14", 14)
ZT16 <- rep("ZT16", 14)
ZT18 <- rep("ZT18", 14)
ZT20 <- rep("ZT20", 14)
ZT22 <- rep("ZT22", 14)
ZT24 <- rep("ZT24", 14)
ZTs <- c(ZT2,ZT4,ZT6,ZT8,ZT10,ZT12,ZT14,ZT16,ZT18,ZT20,ZT22,ZT24)

colData = data.frame(
  row.names = colnames(counts), 
  condition = ZTs
)

cds = DESeqDataSetFromMatrix(countData=finalcount, #Creates DESeq2 object
                             colData=colData,
                             design= ~ condition)

#DESeq2------------------------------------------

cds = estimateSizeFactors(cds)
cds = estimateDispersions(cds)

plotDispEsts(cds)

cds <- DESeq(cds)
res <- results(cds)
head(res)

sum(res$padj < 0.05, na.rm=T)

plotMA(res, ylim=c(-5,5))
