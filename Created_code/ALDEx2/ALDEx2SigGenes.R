library(ALDEx2)

counts <- read.table("Lab/rawdata/finalcountGithubGenesTransALL.txt",
                     header=TRUE, sep='\t')
names <- read.table("lab/RawData/finalcountGithubGenesTransNAMES.txt", 
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

#--------------------ALDEx2-----------------------------------------------------

use_ALDEX <- function(count,conds) { 
  x.all <- aldex(count, conds, mc.samples=128, test="t", effect=TRUE,
                 include.sample.summary=FALSE, denom="all", verbose=TRUE)
  significant <- subset(x.all, we.ep < 0.05) #Identify all genes with p < 0.05
  signifgenes <- subset(names,rownames(names)%in%rownames(significant)) #Genes ALDEx2 finds significant
  write.table(signifgenes,file=paste("lab/ALDEx2SigGenes/Comparison",i,".txt",sep = ""), sep='\t') 
}

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