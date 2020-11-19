library(tidyverse)
library(clustertend)

#-------------------Data Preperation------------------------

AllZT <- read.table("lab/Heatmaps_CV2_expression/BrenneckeMod_allZT_RUV2.txt",
                    header=TRUE, sep='\t')

AllZT_BioVar <- select(AllZT, Gene, contains("BioVar"))

AllZT_BioVar[is.na(AllZT_BioVar)]<-0

HVG <- read.table("lab/Heatmaps_CV2_expression/HVG_allZT_nbZT.txt",header=TRUE,sep='\t')

HVG_allZT_BioVar <- inner_join(AllZT_BioVar,HVG, by=c("Gene"="allZT")) %>%
  select(., Gene, contains("BioVar"))

#----------------------Hopkins------------------------------

x <- HVG_allZT_BioVar[2:13]

hopkins(x, n = 5, byrow = F, header = F)

hopkins(x, n = 10, byrow = F, header = F)

hopkins(x, n = 20, byrow = F, header = F)

hopkins(x, n = 30, byrow = F, header = F)

hopkins(x, n = 50, byrow = F, header = F)

hopkins(x, n = 100, byrow = F, header = F)

hopkins(x, n = 250, byrow = F, header = F)

hopkins(x, n = 500, byrow = F, header = F)
