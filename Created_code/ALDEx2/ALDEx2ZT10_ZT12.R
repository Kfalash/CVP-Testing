library(ALDEx2)

#---------------Data Preperation-----------------------

counts <- read.table("Lab/rawdata/finalcountZT10_ZT12.txt",
                     header=TRUE, sep='\t')
ZT10 <- rep("ZT10", length(colnames(counts[0:14])))
ZT12 <-rep("ZT12", length(colnames(counts[15:28])))

conds <- c(ZT10,ZT12)

#--------------------ALDEx2----------------------------

x.all <- aldex(counts, conds, mc.samples=128, test="t", effect=TRUE,
               include.sample.summary=FALSE, denom="all", verbose=TRUE)
               
#Creates Volcano Plot
par(mfrow=c(1,2))
plot(x.all$diff.btw, x.all$we.ep, log="y", cex=0.7, col=rgb(0,0,1,0.2),
     pch=19, xlab="Difference", ylab="P value", main="Volcano plot")
points(x.all$diff.btw, x.all$we.eBH, cex=0.7, col=rgb(1,0,0,0.2),
       pch=19)
abline(h=0.05, lty=2, col="grey")

#Performs all transformation and plots
x <- aldex.clr(counts, conds, mc.samples=128, denom="all", verbose=F)
x.e <- aldex.effect(x, verbose = TRUE, include.sample.summary = FALSE, useMC=FALSE, CI=FALSE)
plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="all")
points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
abline(0,1)
abline(0,-1)
abline(h=0, col="gray", lty=2)
abline(0,-1,lty=2)
