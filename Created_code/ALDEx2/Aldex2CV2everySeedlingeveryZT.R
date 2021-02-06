library(ALDEx2)

counts <- read.table("Lab/Data/CVP_Data/rawdata/finalcountGithubGenesTransALL.txt",
                     header=TRUE, sep='\t')

isZero <- base::rowSums(count) == 0
sum(isZero) #How many rows have no count data. 6644.

cv2values <- vector("list", length=12) #Creates blank lists to gather cv2 values

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

#Select set to run. Must change list number to ZT number (1,2 , 3,4) for previous run to not be overwritten.
conds <- c(ZT2,ZT4) #1,2
count <- counts[1:28]

conds <- c(ZT6,ZT8) #3,4
count <- counts[29:56]

conds <- c(ZT10,ZT12) #5,6
count <- counts[57:84]

conds <- c(ZT14,ZT16) #7,8
count <- counts[85:112]

conds <- c(ZT18,ZT20) #9,10
count <- counts[113:140]

conds <- c(ZT22,ZT24) #11,12
count <- counts[141:168]

x.clr <- aldex.clr(count, conds, mc.samples=128, denom="all", verbose=TRUE)

CV2Finder1 <- function(x.clr){ #Gathers clr for each seedling, turns into CV^2, adds to list
  clrvalues1 <- c(x.clr@analysisData[[1]][i],x.clr@analysisData[[2]][i],x.clr@analysisData[[3]][i],
                  x.clr@analysisData[[4]][i],x.clr@analysisData[[5]][i],x.clr@analysisData[[6]][i],
                  x.clr@analysisData[[7]][i],x.clr@analysisData[[8]][i],x.clr@analysisData[[9]][i],
                  x.clr@analysisData[[10]][i],x.clr@analysisData[[11]][i],x.clr@analysisData[[12]][i],
                  x.clr@analysisData[[13]][i],x.clr@analysisData[[14]][i]) 
  cv2.1 <- var(clrvalues1)/(mean(clrvalues1)^2)
  cv2values[[1]][i] <<- cv2.1 ##NUMBER [[1]] MUST BE MANUALLY CHANGED AFTER EACH RUN. Match with time point. ZT2=1, ZT6=3
  
  clrvalues2 <- c(x.clr@analysisData[[15]][i],x.clr@analysisData[[16]][i],x.clr@analysisData[[17]][i],
                  x.clr@analysisData[[18]][i],x.clr@analysisData[[19]][i],x.clr@analysisData[[20]][i],
                  x.clr@analysisData[[21]][i],x.clr@analysisData[[22]][i],x.clr@analysisData[[23]][i],
                  x.clr@analysisData[[24]][i],x.clr@analysisData[[25]][i],x.clr@analysisData[[26]][i],
                  x.clr@analysisData[[27]][i],x.clr@analysisData[[28]][i])
  cv2.2 <- var(clrvalues2)/(mean(clrvalues2)^2)
  cv2values[[2]][i] <<- cv2.2 ##[[2]] MANUALLY CHANGED AFTER EACH RUN. ZT2=2, ZT8=4
}
for (i in 1:length(x.clr@analysisData[[1]])){
  CV2Finder1(x.clr)
}
#Calc cv2 for each value and put into list

names(cv2values) <- c("cv2_ZT2","cv2_ZT4","cv2_ZT6","cv2_ZT8","cv2_ZT10","cv2_ZT12",
                      "cv2_ZT14","cv2_ZT16","cv2_ZT18","cv2_ZT20","cv2_ZT22","cv2_ZT24")
cv2save <- data.frame(lapply(cv2values, "length<-", max(lengths(cv2values)))) #Change from list to dataframe

write.table(cv2save, file="lab/CV2ZTall.txt", sep='\t')

#(Variance/mean^2) = CV2

# rab.all - median clr value for all samples in the feature
# rab.win.NS - median clr value for the ZT2 group of samples
# rab.win.S - median clr value for the S group of samples
# dif.btw - median difference in clr values between S and NS groups
# dif.win - median of the largest difference in clr values within S and NS groups
# effect - median effect size: diff.btw / max(diff.win) for all instances
# overlap - proportion of effect size that overlaps 0 (i.e. no effect)
# we.ep - Expected P value of Welch's t test
# we.eBH - Expected Benjamini-Hochberg corrected P value of Welch's t test
# wi.ep - Expected P value of Wilcoxon rank test
# wi.eBH - Expected Benjamini-Hochberg corrected P value of Wilcoxon test
