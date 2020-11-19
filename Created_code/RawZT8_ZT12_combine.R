#Preparing data to combine
#Take only raw counts from the data

#---------------------------ZT8 seedings----------------------------------------
#ZT8 1

ZT8_1 <- read.table("lab/RawData/GSM3184429_WT-ZT8-seedling-1_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_1count <- ZT8_1[,ncol(ZT8_1)]

#ZT8 2

ZT8_2 <- read.table("lab/RawData/GSM3184436_WT-ZT8-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_2count <- ZT8_2[,ncol(ZT8_2)]

#ZT8 3

ZT8_3 <- read.table("lab/RawData/GSM3184437_WT-ZT8-seedling-3_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_3count <- ZT8_3[,ncol(ZT8_3)]

#ZT8 4

ZT8_4 <- read.table("lab/RawData/GSM3184438_WT-ZT8-seedling-4-bis_S14_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_4count <- ZT8_4[,ncol(ZT8_4)]

#ZT8 5

ZT8_5 <- read.table("lab/RawData/GSM3184439_WT-ZT8-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_5count <- ZT8_5[,ncol(ZT8_5)]

#ZT8 6

ZT8_6 <- read.table("lab/RawData/GSM3184440_WT-ZT8-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_6count <- ZT8_6[,ncol(ZT8_6)]

#ZT8 7

ZT8_7 <- read.table("lab/RawData/GSM3184441_WT-ZT8-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_7count <- ZT8_7[,ncol(ZT8_7)]

#ZT8 9

ZT8_9 <- read.table("lab/RawData/GSM3184442_WT-ZT8-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_9count <- ZT8_9[,ncol(ZT8_9)]

#ZT8 10

ZT8_10 <- read.table("lab/RawData/GSM3184430_WT-ZT8-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_10count <- ZT8_10[,ncol(ZT8_10)]

#ZT8 11

ZT8_11 <- read.table("lab/RawData/GSM3184431_WT-ZT8-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_11count <- ZT8_11[,ncol(ZT8_11)]

#ZT8 12

ZT8_12 <- read.table("lab/RawData/GSM3184432_WT-ZT8-seedling-12_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_12count <- ZT8_12[,ncol(ZT8_12)]

#ZT8 13

ZT8_13 <- read.table("lab/RawData/GSM3184433_WT-ZT8-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_13count <- ZT8_13[,ncol(ZT8_13)]

#ZT8 14

ZT8_14 <- read.table("lab/RawData/GSM3184434_WT-ZT8-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_14count <- ZT8_14[,ncol(ZT8_14)]

#ZT8 16

ZT8_16 <- read.table("lab/RawData/GSM3184435_WT-ZT8-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT8_16count <- ZT8_16[,ncol(ZT8_16)]
#--------------------------ZT10 seedings----------------------------------------
#ZT10 1

ZT10_1 <- read.table("lab/RawData/GSM3184443_WT-ZT10-seedling-1_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT10_1count <- ZT10_1[,ncol(ZT10_1)]

#ZT10 2

ZT10_2 <- read.table("lab/RawData/GSM3184449_WT-ZT10-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_2count <- ZT10_2[,ncol(ZT10_2)]

#ZT10 3

ZT10_3 <- read.table("lab/RawData/GSM3184450_WT-ZT10-seedling-3_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_3count <- ZT10_3[,ncol(ZT10_3)]

#ZT10 4

ZT10_4 <- read.table("lab/RawData/GSM3184451_WT-ZT10-seedling-4_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_4count <- ZT10_4[,ncol(ZT10_4)]

#ZT10 5 

ZT10_5 <- read.table("lab/RawData/GSM3184452_WT-ZT10-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_5count <- ZT10_5[,ncol(ZT10_5)]

#ZT10 6

ZT10_6 <- read.table("lab/RawData/GSM3184453_WT-ZT10-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_6count <- ZT10_6[,ncol(ZT10_6)]

#ZT10 7

ZT10_7 <- read.table("lab/RawData/GSM3184454_WT-ZT10-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_7count <- ZT10_7[,ncol(ZT10_7)]

#ZT10 8

ZT10_8 <- read.table("lab/RawData/GSM3184455_WT-ZT10-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_8count <- ZT10_8[,ncol(ZT10_8)]

#ZT10 9 

ZT10_9 <- read.table("lab/RawData/GSM3184456_WT-ZT10-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_9count <- ZT10_9[,ncol(ZT10_9)]

#ZT10 10

ZT10_10 <- read.table("lab/RawData/GSM3184444_WT-ZT10-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT10_10count <- ZT10_10[,ncol(ZT10_10)]

#ZT10 11

ZT10_11 <- read.table("lab/RawData/GSM3184445_WT-ZT10-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_11count <- ZT10_11[,ncol(ZT10_11)]

#ZT10 13

ZT10_13 <- read.table("lab/RawData/GSM3184446_WT-ZT10-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_13count <- ZT10_13[,ncol(ZT10_13)]

#ZT10 14

ZT10_14 <- read.table("lab/RawData/GSM3184447_WT-ZT10-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_14count <- ZT10_14[,ncol(ZT10_14)]

#ZT10 16

ZT10_16 <- read.table("lab/RawData/GSM3184448_WT-ZT10-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT10_16count <- ZT10_16[,ncol(ZT10_16)]

#--------------------------ZT12 seedings----------------------------------------

#ZT12 1

ZT12_1 <- read.table("lab/RawData/GSM3184458_WT-ZT12-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_1count <- ZT12_1[,ncol(ZT12_1)]

#ZT12 2

ZT12_2 <- read.table("lab/RawData/GSM3184465_WT-ZT12-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_2count <- ZT12_2[,ncol(ZT12_2)]

#ZT12 5

ZT12_5 <- read.table("lab/RawData/GSM3184466_WT-ZT12-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_5count <- ZT12_5[,ncol(ZT12_5)]

#ZT12 6

ZT12_6 <- read.table("lab/RawData/GSM3184467_WT-ZT12-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_6count <- ZT12_6[,ncol(ZT12_6)]

#ZT12 7

ZT12_7 <- read.table("lab/RawData/GSM3184468_WT-ZT12-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_7count <- ZT12_7[,ncol(ZT12_7)]

#ZT12 8

ZT12_8 <- read.table("lab/RawData/GSM3184469_WT-ZT12-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_8count <- ZT12_8[,ncol(ZT12_8)]

#ZT12 9

ZT12_9 <- read.table("lab/RawData/GSM3184470_WT-ZT12-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_9count <- ZT12_9[,ncol(ZT12_9)]

#ZT12 10

ZT12_10 <- read.table("lab/RawData/GSM3184458_WT-ZT12-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_10count <- ZT12_10[,ncol(ZT12_10)]

#ZT12 11

ZT12_11 <- read.table("lab/RawData/GSM3184459_WT-ZT12-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_11count <- ZT12_11[,ncol(ZT12_11)]

#ZT12 12

ZT12_12 <- read.table("lab/RawData/GSM3184460_WT-ZT12-seedling-12_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_12count <- ZT12_12[,ncol(ZT12_12)]

#ZT12 13

ZT12_13 <- read.table("lab/RawData/GSM3184461_WT-ZT12-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_13count <- ZT12_13[,ncol(ZT12_13)]

#ZT12 14

ZT12_14 <- read.table("lab/RawData/GSM3184462_WT-ZT12-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_14count <- ZT12_14[,ncol(ZT12_14)]

#ZT12 15

ZT12_15 <- read.table("lab/RawData/GSM3184463_WT-ZT12-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_15count <- ZT12_15[,ncol(ZT12_15)]

#ZT12 16

ZT12_16 <- read.table("lab/RawData/GSM3184464_WT-ZT12-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT12_16count <- ZT12_16[,ncol(ZT12_16)]

#-----------------------------Combine Count Data--------------------------------

#Have to make files for each pair we want to anaylze.

ZT8 <- cbind(ZT8_1count,ZT8_2count,ZT8_3count,ZT8_4count,ZT8_5count,ZT8_6count,ZT8_7count,ZT8_9count,ZT8_10count,ZT8_11count,ZT8_12count,ZT8_13count,ZT8_14count,ZT8_16count)
ZT10 <- c(ZT10_1count,ZT10_2count,ZT10_3count,ZT10_4count,ZT10_5count,ZT10_6count,ZT10_7count,ZT10_8count,ZT10_9count,ZT10_10count,ZT10_11count,ZT10_13count,ZT10_14count,ZT10_16count)
ZT12 <- c(ZT12_1count,ZT12_2count,ZT12_5count,ZT12_6count,ZT12_7count,ZT12_8count,ZT12_9count,ZT12_10count,ZT12_11count,ZT12_12count,ZT12_13count,ZT12_14count,ZT12_15count,ZT12_16count)
count <- cbind(ZT8,ZT10,ZT12)

#Creates a new file with only the count data for each time point
write.table(finalcount, file="lab/RawData/finalcountZT8_ZT12.txt", sep='\t')
