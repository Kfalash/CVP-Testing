library(ALDEx2)

counts <- read.table("Lab/rawdata/finalcountALL.txt",
                     header=TRUE, sep='\t')

#---------ZTs-----------------
ZT2 <- rep("ZT2", 14)  #contains counts for each timepoint
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
#------------Functions-------------------
#Going through and comparing multiple time points

#ALDEx2 needs counts and conditions
#Counts is values from the file
#Conds is ZTx and ZYy corresponding to counts

#So, make ZTx and ZTy the two time points we are comparing
#Make them into conds
#Index their positions in the counts file

#Run in ALDEx2 and compare
#Repeat
#------------------ALDEx2-------------------------
use_ALDEX <- function(count,conds) { #Creates the two plots that we want
  x.all <- aldex(count, conds, mc.samples=128, test="t", effect=TRUE,
                 include.sample.summary=FALSE, denom="all", verbose=TRUE)
  x <- aldex.clr(count, conds, mc.samples=128, denom="all", verbose=F)
  x.e <- aldex.effect(x, verbose = TRUE, include.sample.summary = FALSE, useMC=FALSE, CI=FALSE)
  
  #Volcano plot
  par(mfrow=c(1,2))
  plot(x.all$diff.btw, x.all$we.ep, log="y", cex=0.7, col=rgb(0,0,1,0.2),
       pch=19, xlab="Difference", ylab="P value", main="Volcano plot")
  points(x.all$diff.btw, x.all$we.eBH, cex=0.7, col=rgb(1,0,0,0.2),
         pch=19)
  abline(h=0.05, lty=2, col="grey")
  #all plot
  plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="all")
  points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
  points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
  points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
  abline(0,1)
  abline(0,-1)
  abline(h=0, col="gray", lty=2)
  abline(0,-1,lty=2)
}

#----------------Function--------------------
x <- 1 #Variables to automate going through the file
y <- 28
n <- 14
m <- 15
Combine_ZTs <- function(ZTs) {
  if (i < 2) {
    ZTx <- ZTs[x:n] #For the first run, creates timepoints
    ZTy <- ZTs[m:y] #from first two sections
  }
  else{
    n <<- n+14 #Adds 14 each time the function is called.
    m <<- m+14 #Because each timepoint has 14 seedlings
    x <<- x+14 
    y <<- y+14
    ZTx <- ZTs[x:n] #Makes the two timepoints to compare
    ZTy <- ZTs[m:y]
  }
  count <- counts[x:y] #StartZTx:ZTyend from file
  conds <- c(ZTx,ZTy)
  print(conds)
  use_ALDEX(count,conds)
}

#Run comparisions
for (i in 1:11){
  Combine_ZTs(ZTs)
}
