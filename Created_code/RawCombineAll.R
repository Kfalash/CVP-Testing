#Preparing data to combine

#---------------------------ZT2 seedings----------------------------------------
#ZT2_1

ZT2_1 <- read.table("lab/RawData/GSM3184387_WT-ZT2-seedling-1-bis_S1_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_1count <- ZT2_1[,ncol(ZT2_1)]

#ZT2_3

ZT2_3 <- read.table("lab/RawData/GSM3184394_WT-ZT2-seedling-3-bis_S10_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_3count <- ZT2_3[,ncol(ZT2_3)]

#ZT2_4

ZT2_4 <- read.table("lab/RawData/GSM3184395_WT-ZT2-seedling-4_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_4count <- ZT2_4[,ncol(ZT2_4)]

#ZT2_5

ZT2_5 <- read.table("lab/RawData/GSM3184396_WT-ZT2-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_5count <- ZT2_5[,ncol(ZT2_5)]

#ZT2_6

ZT2_6 <- read.table("lab/RawData/GSM3184397_WT-ZT2-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_6count <- ZT2_6[,ncol(ZT2_6)]

#ZT2_7

ZT2_7 <- read.table("lab/RawData/GSM3184398_WT-ZT2-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_7count <- ZT2_7[,ncol(ZT2_7)]

#ZT2_8

ZT2_8 <- read.table("lab/RawData/GSM3184399_WT-ZT2-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_8count <- ZT2_8[,ncol(ZT2_8)]

#ZT2_9

ZT2_9 <- read.table("lab/RawData/GSM3184400_WT-ZT2-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_9count <- ZT2_9[,ncol(ZT2_9)]

#ZT2_10

ZT2_10 <- read.table("lab/RawData/GSM3184388_WT-ZT2-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_10count <- ZT2_10[,ncol(ZT2_10)]

#ZT2_11

ZT2_11 <- read.table("lab/RawData/GSM3184389_WT-ZT2-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_11count <- ZT2_11[,ncol(ZT2_11)]

#ZT2_12

ZT2_12 <- read.table("lab/RawData/GSM3184390_WT-ZT2-seedling-12_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_12count <- ZT2_12[,ncol(ZT2_12)]

#ZT2_14

ZT2_14 <- read.table("lab/RawData/GSM3184391_WT-ZT2-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_14count <- ZT2_14[,ncol(ZT2_14)]

#ZT2_15

ZT2_15 <- read.table("lab/RawData/GSM3184392_WT-ZT2-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_15count <- ZT2_15[,ncol(ZT2_15)]

#ZT2_16

ZT2_16 <- read.table("lab/RawData/GSM3184393_WT-ZT2-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT2_16count <- ZT2_16[,ncol(ZT2_16)]

#---------------------------ZT4 seedings----------------------------------------
#ZT4_1

ZT4_1 <- read.table("lab/RawData/GSM3184401_WT-ZT4-seedling-1_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_1count <- ZT4_1[,ncol(ZT4_1)]

#ZT4_2

ZT4_2 <- read.table("lab/RawData/GSM3184407_WT-ZT4-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_2count <- ZT4_2[,ncol(ZT4_2)]

#ZT4_3

ZT4_3 <- read.table("lab/RawData/GSM3184408_WT-ZT4-seedling-3_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_3count <- ZT4_3[,ncol(ZT4_3)]

#ZT4_4

ZT4_4 <- read.table("lab/RawData/GSM3184409_WT-ZT4-seedling-4_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_4count <- ZT4_4[,ncol(ZT4_4)]

#ZT4_5

ZT4_5 <- read.table("lab/RawData/GSM3184410_WT-ZT4-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_5count <- ZT4_5[,ncol(ZT4_5)]

#ZT4_6

ZT4_6 <- read.table("lab/RawData/GSM3184411_WT-ZT4-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_6count <- ZT4_6[,ncol(ZT4_6)]

#ZT4_7

ZT4_7 <- read.table("lab/RawData/GSM3184412_WT-ZT4-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_7count <- ZT4_7[,ncol(ZT4_7)]

#ZT4_8

ZT4_8 <- read.table("lab/RawData/GSM3184413_WT-ZT4-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_8count <- ZT4_8[,ncol(ZT4_8)]

#ZT4_9

ZT4_9 <- read.table("lab/RawData/GSM3184414_WT-ZT4-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_9count <- ZT4_9[,ncol(ZT4_9)]

#ZT4_10

ZT4_10 <- read.table("lab/RawData/GSM3184402_WT-ZT4-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_10count <- ZT4_10[,ncol(ZT4_10)]

#ZT4_13

ZT4_13 <- read.table("lab/RawData/GSM3184403_WT-ZT4-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_13count <- ZT4_13[,ncol(ZT4_13)]

#ZT4_14

ZT4_14 <- read.table("lab/RawData/GSM3184404_WT-ZT4-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_14count <- ZT4_14[,ncol(ZT4_14)]

#ZT4_15

ZT4_15 <- read.table("lab/RawData/GSM3184405_WT-ZT4-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_15count <- ZT4_15[,ncol(ZT4_15)]

#ZT4_16

ZT4_16 <- read.table("lab/RawData/GSM3184406_WT-ZT4-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT4_16count <- ZT4_16[,ncol(ZT4_16)]

#---------------------------ZT6 seedings----------------------------------------
#ZT6_1

ZT6_1 <- read.table("lab/RawData/GSM3184415_WT-ZT6-seedling-1_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT6_1count <- ZT6_1[,ncol(ZT6_1)]

#ZT6_2

ZT6_2 <- read.table("lab/RawData/GSM3184421_WT-ZT6-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_2count <- ZT6_2[,ncol(ZT6_2)]

#ZT6_3

ZT6_3 <- read.table("lab/RawData/GSM3184422_WT-ZT6-seedling-3_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_3count <- ZT6_3[,ncol(ZT6_3)]

#ZT6_4

ZT6_4 <- read.table("lab/RawData/GSM3184423_WT-ZT6-seedling-4_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_4count <- ZT6_4[,ncol(ZT6_4)]

#ZT6_5

ZT6_5 <- read.table("lab/RawData/GSM3184424_WT-ZT6-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_5count <- ZT6_5[,ncol(ZT6_5)]

#ZT6_6

ZT6_6 <- read.table("lab/RawData/GSM3184425_WT-ZT6-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_6count <- ZT6_6[,ncol(ZT6_6)]

#ZT6_7

ZT6_7 <- read.table("lab/RawData/GSM3184426_WT-ZT6-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_7count <- ZT6_7[,ncol(ZT6_7)]

#ZT6_8

ZT6_8 <- read.table("lab/RawData/GSM3184427_WT-ZT6-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_8count <- ZT6_8[,ncol(ZT6_8)]

#ZT6_9

ZT6_9 <- read.table("lab/RawData/GSM3184428_WT-ZT6-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_9count <- ZT6_9[,ncol(ZT6_9)]

#ZT6_10

ZT6_10 <- read.table("lab/RawData/GSM3184416_WT-ZT6-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                   header=TRUE, sep='\t')
ZT6_10count <- ZT6_10[,ncol(ZT6_10)]

#ZT6_11

ZT6_11 <- read.table("lab/RawData/GSM3184417_WT-ZT6-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT6_11count <- ZT6_11[,ncol(ZT6_11)]

#ZT6_14

ZT6_14 <- read.table("lab/RawData/GSM3184418_WT-ZT6-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT6_14count <- ZT6_14[,ncol(ZT6_14)]

#ZT6_15

ZT6_15 <- read.table("lab/RawData/GSM3184419_WT-ZT6-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT6_15count <- ZT6_15[,ncol(ZT6_15)]

#ZT6_16

ZT6_16 <- read.table("lab/RawData/GSM3184420_WT-ZT6-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT6_16count <- ZT6_16[,ncol(ZT6_16)]

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


#--------------------------ZT14 seedings----------------------------------------
#ZT14_1

ZT14_1 <- read.table("lab/RawData/GSM3184471_WT-ZT14-seedling-1-bis_S2_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_1count <- ZT14_1[,ncol(ZT14_1)]

#ZT14_2

ZT14_2 <- read.table("lab/RawData/GSM3184478_WT-ZT14-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_2count <- ZT14_2[,ncol(ZT14_2)]

#ZT14_4

ZT14_4 <- read.table("lab/RawData/GSM3184479_WT-ZT14-seedling-4_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_4count <- ZT14_4[,ncol(ZT14_4)]

#ZT14_5

ZT14_5 <- read.table("lab/RawData/GSM3184480_WT-ZT14-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_5count <- ZT14_5[,ncol(ZT14_5)]

#ZT14_6

ZT14_6 <- read.table("lab/RawData/GSM3184481_WT-ZT14-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_6count <- ZT14_6[,ncol(ZT14_6)]

#ZT14_7

ZT14_7 <- read.table("lab/RawData/GSM3184482_WT-ZT14-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_7count <- ZT14_7[,ncol(ZT14_7)]

#ZT14_8

ZT14_8 <- read.table("lab/RawData/GSM3184483_WT-ZT14-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_8count <- ZT14_8[,ncol(ZT14_8)]

#ZT14_9

ZT14_9 <- read.table("lab/RawData/GSM3184484_WT-ZT14-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_9count <- ZT14_9[,ncol(ZT14_9)]

#ZT14_11

ZT14_11 <- read.table("lab/RawData/GSM3184472_WT-ZT14-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT14_11count <- ZT14_11[,ncol(ZT14_11)]

#ZT14_12

ZT14_12 <- read.table("lab/RawData/GSM3184473_WT-ZT14-seedling-12-bis_S30_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT14_12count <- ZT14_12[,ncol(ZT14_12)]

#ZT14_13

ZT14_13 <- read.table("lab/RawData/GSM3184474_WT-ZT14-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT14_13count <- ZT14_13[,ncol(ZT14_13)]

#ZT14_14

ZT14_14 <- read.table("lab/RawData/GSM3184475_WT-ZT14-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT14_14count <- ZT14_14[,ncol(ZT14_14)]

#ZT14_15

ZT14_15 <- read.table("lab/RawData/GSM3184476_WT-ZT14-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT14_15count <- ZT14_15[,ncol(ZT14_15)]

#ZT14_16

ZT14_16 <- read.table("lab/RawData/GSM3184477_WT-ZT14-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT14_16count <- ZT14_16[,ncol(ZT14_16)]

#--------------------------ZT16 seedings----------------------------------------
#ZT16_1

ZT16_1 <- read.table("lab/RawData/GSM3184485_WT-ZT16-seedling-1-bis_S3_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_1count <- ZT16_1[,ncol(ZT16_1)]

#ZT16_2

ZT16_2 <- read.table("lab/RawData/GSM3184492_WT-ZT16-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_2count <- ZT16_2[,ncol(ZT16_2)]

#ZT16_3

ZT16_3 <- read.table("lab/RawData/GSM3184493_WT-ZT16-seedling-3_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_3count <- ZT16_3[,ncol(ZT16_3)]

#ZT16_4

ZT16_4 <- read.table("lab/RawData/GSM3184494_WT-ZT16-seedling-4-bis_S15_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_4count <- ZT16_4[,ncol(ZT16_4)]

#ZT16_5

ZT16_5 <- read.table("lab/RawData/GSM3184495_WT-ZT16-seedling-5-bis_S19_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_5count <- ZT16_5[,ncol(ZT16_5)]

#ZT16_6

ZT16_6 <- read.table("lab/RawData/GSM3184496_WT-ZT16-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_6count <- ZT16_6[,ncol(ZT16_6)]

#ZT16_7

ZT16_7 <- read.table("lab/RawData/GSM3184497_WT-ZT16-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_7count <- ZT16_7[,ncol(ZT16_7)]

#ZT16_9

ZT16_9 <- read.table("lab/RawData/GSM3184498_WT-ZT16-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT16_9count <- ZT16_9[,ncol(ZT16_9)]


#ZT16_10

ZT16_10 <- read.table("lab/RawData/GSM3184486_WT-ZT16-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_10count <- ZT16_10[,ncol(ZT16_10)]

#ZT16_11

ZT16_11 <- read.table("lab/RawData/GSM3184487_WT-ZT16-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_11count <- ZT16_11[,ncol(ZT16_11)]

#ZT16_13

ZT16_13 <- read.table("lab/RawData/GSM3184488_WT-ZT16-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_13count <- ZT16_13[,ncol(ZT16_13)]

#ZT16_14

ZT16_14 <- read.table("lab/RawData/GSM3184489_WT-ZT16-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_14count <- ZT16_14[,ncol(ZT16_14)]

#ZT16_15

ZT16_15 <- read.table("lab/RawData/GSM3184490_WT-ZT16-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_15count <- ZT16_15[,ncol(ZT16_15)]

#ZT16_16

ZT16_16 <- read.table("lab/RawData/GSM3184491_WT-ZT16-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT16_16count <- ZT16_16[,ncol(ZT16_16)]

#--------------------------ZT18 seedings----------------------------------------
#ZT18_1

ZT18_1 <- read.table("lab/RawData/GSM3184499_WT-ZT18-seedling-1-bis_S4_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_1count <- ZT18_1[,ncol(ZT18_1)]

#ZT18_2

ZT18_2 <- read.table("lab/RawData/GSM3184507_WT-ZT18-seedling-2_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT18_2count <- ZT18_2[,ncol(ZT18_2)]

#ZT18_3

ZT18_3 <- read.table("lab/RawData/GSM3184508_WT-ZT18-seedling-3-bis_S11_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT18_3count <- ZT18_3[,ncol(ZT18_3)]

#ZT18_5

ZT18_5 <- read.table("lab/RawData/GSM3184509_WT-ZT18-seedling-5-bis_S20_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT18_5count <- ZT18_5[,ncol(ZT18_5)]

#ZT18_7

ZT18_7 <- read.table("lab/RawData/GSM3184510_WT-ZT18-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT18_7count <- ZT18_7[,ncol(ZT18_7)]

#ZT18_8

ZT18_8 <- read.table("lab/RawData/GSM3184511_WT-ZT18-seedling-8_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT18_8count <- ZT18_8[,ncol(ZT18_8)]

#ZT18_9

ZT18_9 <- read.table("lab/RawData/GSM3184512_WT-ZT18-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT18_9count <- ZT18_9[,ncol(ZT18_9)]

#ZT18_10

ZT18_10 <- read.table("lab/RawData/GSM3184500_WT-ZT18-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_10count <- ZT18_10[,ncol(ZT18_10)]

#ZT18_11

ZT18_11 <- read.table("lab/RawData/GSM3184501_WT-ZT18-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_11count <- ZT18_11[,ncol(ZT18_11)]

#ZT18_12

ZT18_12 <- read.table("lab/RawData/GSM3184502_WT-ZT18-seedling-12-bis_S31_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_12count <- ZT18_12[,ncol(ZT18_12)]

#ZT18_13

ZT18_13 <- read.table("lab/RawData/GSM3184503_WT-ZT18-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_13count <- ZT18_13[,ncol(ZT18_13)]

#ZT18_14

ZT18_14 <- read.table("lab/RawData/GSM3184504_WT-ZT18-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_14count <- ZT18_14[,ncol(ZT18_14)]

#ZT18_15

ZT18_15 <- read.table("lab/RawData/GSM3184505_WT-ZT18-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_15count <- ZT18_15[,ncol(ZT18_15)]

#ZT18_16

ZT18_16 <- read.table("lab/RawData/GSM3184506_WT-ZT18-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT18_16count <- ZT18_16[,ncol(ZT18_16)]
#--------------------------ZT20 seedings----------------------------------------
#ZT20_1

ZT20_1 <- read.table("lab/RawData/GSM3184513_WT-ZT20-seedling-1-bis_S5_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_1count <- ZT20_1[,ncol(ZT20_1)]

#ZT20_3

ZT20_3 <- read.table("lab/RawData/GSM3184521_WT-ZT20-seedling-3-bis_S12_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT20_3count <- ZT20_3[,ncol(ZT20_3)]

#ZT20_4

ZT20_4 <- read.table("lab/RawData/GSM3184522_WT-ZT20-seedling-4-bis_S16_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT20_4count <- ZT20_4[,ncol(ZT20_4)]

#ZT20_5

ZT20_5 <- read.table("lab/RawData/GSM3184523_WT-ZT20-seedling-5-bis_S21_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT20_5count <- ZT20_5[,ncol(ZT20_5)]

#ZT20_7

ZT20_7 <- read.table("lab/RawData/GSM3184524_WT-ZT20-seedling-7-bis_S25_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT20_7count <- ZT20_7[,ncol(ZT20_7)]

#ZT20_8

ZT20_8 <- read.table("lab/RawData/GSM3184525_WT-ZT20-seedling-8-bis_S27_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT20_8count <- ZT20_8[,ncol(ZT20_8)]

#ZT20_9

ZT20_9 <- read.table("lab/RawData/GSM3184526_WT-ZT20-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT20_9count <- ZT20_9[,ncol(ZT20_9)]

#ZT20_10

ZT20_10 <- read.table("lab/RawData/GSM3184514_WT-ZT20-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_10count <- ZT20_10[,ncol(ZT20_10)]

#ZT20_11

ZT20_11 <- read.table("lab/RawData/GSM3184515_WT-ZT20-seedling-11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_11count <- ZT20_11[,ncol(ZT20_11)]

#ZT20_12

ZT20_12 <- read.table("lab/RawData/GSM3184516_WT-ZT20-seedling-12_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_12count <- ZT20_12[,ncol(ZT20_12)]

#ZT20_13

ZT20_13 <- read.table("lab/RawData/GSM3184517_WT-ZT20-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_13count <- ZT20_13[,ncol(ZT20_13)]

#ZT20_14

ZT20_14 <- read.table("lab/RawData/GSM3184518_WT-ZT20-seedling-14_S6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_14count <- ZT20_14[,ncol(ZT20_14)]

#ZT20_15

ZT20_15 <- read.table("lab/RawData/GSM3184519_WT-ZT20-seedling-15_S18_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_15count <- ZT20_15[,ncol(ZT20_15)]

#ZT20_16

ZT20_16 <- read.table("lab/RawData/GSM3184520_WT-ZT20-seedling-16_S30_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT20_16count <- ZT20_16[,ncol(ZT20_16)]

#--------------------------ZT22 seedings----------------------------------------
#ZT22_1

ZT22_1 <- read.table("lab/RawData/GSM3184527_WT-ZT22-seedling-1-bis_S6_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_1count <- ZT22_1[,ncol(ZT22_1)]

#ZT22_2

ZT22_2 <- read.table("lab/RawData/GSM3184535_WT-ZT22-seedling-2_S22_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT22_2count <- ZT22_2[,ncol(ZT22_2)]

#ZT22_3

ZT22_3 <- read.table("lab/RawData/GSM3184536_WT-ZT22-seedling-3-bis_S13_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT22_3count <- ZT22_3[,ncol(ZT22_3)]

#ZT22_4

ZT22_4 <- read.table("lab/RawData/GSM3184537_WT-ZT22-seedling-4-bis_S17_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT22_4count <- ZT22_4[,ncol(ZT22_4)]

#ZT22_5

ZT22_5 <- read.table("lab/RawData/GSM3184538_WT-ZT22-seedling-5_S26_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT22_5count <- ZT22_5[,ncol(ZT22_5)]

#ZT22_8

ZT22_8 <- read.table("lab/RawData/GSM3184539_WT-ZT22-seedling-8-bis_S28_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT22_8count <- ZT22_8[,ncol(ZT22_8)]

#ZT22_9

ZT22_9 <- read.table("lab/RawData/GSM3184540_WT-ZT22-seedling-9_S11_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT22_9count <- ZT22_9[,ncol(ZT22_9)]

#ZT22_10

ZT22_10 <- read.table("lab/RawData/GSM3184528_WT-ZT22-seedling-10_S23_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_10count <- ZT22_10[,ncol(ZT22_10)]

#ZT22_11

ZT22_11 <- read.table("lab/RawData/GSM3184529_WT-ZT22-seedling-11_S3_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_11count <- ZT22_11[,ncol(ZT22_11)]

#ZT22_12

ZT22_12 <- read.table("lab/RawData/GSM3184530_WT-ZT22-seedling-12_S15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_12count <- ZT22_12[,ncol(ZT22_12)]

#ZT22_13

ZT22_13 <- read.table("lab/RawData/GSM3184531_WT-ZT22-seedling-13_S27_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_13count <- ZT22_13[,ncol(ZT22_13)]

#ZT22_14

ZT22_14 <- read.table("lab/RawData/GSM3184532_WT-ZT22-seedling-14_S7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_14count <- ZT22_14[,ncol(ZT22_14)]

#ZT22_15

ZT22_15 <- read.table("lab/RawData/GSM3184533_WT-ZT22-seedling-15_S19_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_15count <- ZT22_15[,ncol(ZT22_15)]

#ZT22_16

ZT22_16 <- read.table("lab/RawData/GSM3184534_WT-ZT22-seedling-16_S31_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT22_16count <- ZT22_16[,ncol(ZT22_16)]

#--------------------------ZT24 seedings----------------------------------------
#ZT24_1

ZT24_1 <- read.table("lab/RawData/GSM3184541_WT-ZT0-seedling-1-bis_S7_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_1count <- ZT24_1[,ncol(ZT24_1)]

#ZT24_2

ZT24_2 <- read.table("lab/RawData/GSM3184548_WT-ZT0-seedling-2-bis_S9_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_2count <- ZT24_2[,ncol(ZT24_2)]

#ZT24_4

ZT24_4 <- read.table("lab/RawData/GSM3184549_WT-ZT0-seedling-4-bis_S18_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_4count <- ZT24_4[,ncol(ZT24_4)]

#ZT24_5

ZT24_5 <- read.table("lab/RawData/GSM3184550_WT-ZT0-seedling-5_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_5count <- ZT24_5[,ncol(ZT24_5)]

#ZT24_6

ZT24_6 <- read.table("lab/RawData/GSM3184551_WT-ZT0-seedling-6_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_6count <- ZT24_6[,ncol(ZT24_6)]

#ZT24_7

ZT24_7 <- read.table("lab/RawData/GSM3184552_WT-ZT0-seedling-7_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_7count <- ZT24_7[,ncol(ZT24_7)]

#ZT24_8

ZT24_8 <- read.table("lab/RawData/GSM3184553_WT-ZT0-seedling-8-bis_S29_L001_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_8count <- ZT24_8[,ncol(ZT24_8)]

#ZT24_9

ZT24_9 <- read.table("lab/RawData/GSM3184554_WT-ZT0-seedling-9_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                    header=TRUE, sep='\t')
ZT24_9count <- ZT24_9[,ncol(ZT24_9)]

#ZT24_10

ZT24_10 <- read.table("lab/RawData/GSM3184542_WT-ZT0-seedling-10_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_10count <- ZT24_10[,ncol(ZT24_10)]

#ZT24_12

ZT24_12 <- read.table("lab/RawData/GSM3184543_WT-ZT0-seedling-12_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_12count <- ZT24_12[,ncol(ZT24_12)]

#ZT24_13

ZT24_13 <- read.table("lab/RawData/GSM3184544_WT-ZT0-seedling-13_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_13count <- ZT24_13[,ncol(ZT24_13)]

#ZT24_14

ZT24_14 <- read.table("lab/RawData/GSM3184545_WT-ZT0-seedling-14_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_14count <- ZT24_14[,ncol(ZT24_14)]

#ZT24_15

ZT24_15 <- read.table("lab/RawData/GSM3184546_WT-ZT0-seedling-15_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_15count <- ZT24_15[,ncol(ZT24_15)]

#ZT24_16

ZT24_16 <- read.table("lab/RawData/GSM3184547_WT-ZT0-seedling-16_trimmo_paired_2_10_5_1_tophat_ensembl_TAIR10_nomixed_unstranded_sorted_rmdup_picard_combined_read.txt",
                     header=TRUE, sep='\t')
ZT24_16count <- ZT24_16[,ncol(ZT24_16)]

#-----------------------------Combine Count Data--------------------------------

ZT2 <- cbind(ZT2_1count,ZT2_3count,ZT2_4count,ZT2_5count,ZT2_6count,ZT2_7count,ZT2_8count,ZT2_9count,ZT2_10count,ZT2_11count,ZT2_12count,ZT2_14count,ZT2_15count,ZT2_16count)
ZT4 <- cbind(ZT4_1count,ZT4_2count,ZT4_3count,ZT4_4count,ZT4_5count,ZT4_6count,ZT4_7count,ZT4_8count,ZT4_9count,ZT4_10count,ZT4_13count,ZT4_14count,ZT4_15count,ZT4_16count)
ZT6 <- cbind(ZT6_1count,ZT6_2count,ZT6_3count,ZT6_4count,ZT6_5count,ZT6_6count,ZT6_7count,ZT6_8count,ZT6_9count,ZT6_10count,ZT6_11count,ZT6_14count,ZT6_15count,ZT6_16count)
ZT8 <- cbind(ZT8_1count,ZT8_2count,ZT8_3count,ZT8_4count,ZT8_5count,ZT8_6count,ZT8_7count,ZT8_9count,ZT8_10count,ZT8_11count,ZT8_12count,ZT8_13count,ZT8_14count,ZT8_16count)
ZT10 <- cbind(ZT10_1count,ZT10_2count,ZT10_3count,ZT10_4count,ZT10_5count,ZT10_6count,ZT10_7count,ZT10_8count,ZT10_9count,ZT10_10count,ZT10_11count,ZT10_13count,ZT10_14count,ZT10_16count)
ZT12 <- cbind(ZT12_1count,ZT12_2count,ZT12_5count,ZT12_6count,ZT12_7count,ZT12_8count,ZT12_9count,ZT12_10count,ZT12_11count,ZT12_12count,ZT12_13count,ZT12_14count,ZT12_15count,ZT12_16count)
ZT14 <- cbind(ZT14_1count,ZT14_2count,ZT14_4count,ZT14_5count,ZT14_6count,ZT14_7count,ZT14_8count,ZT14_9count,ZT14_11count,ZT14_12count,ZT14_13count,ZT14_14count,ZT14_15count,ZT14_16count)
ZT16 <- cbind(ZT16_1count,ZT16_2count,ZT16_3count,ZT16_4count,ZT16_5count,ZT16_6count,ZT16_7count,ZT16_9count,ZT16_10count,ZT16_11count,ZT16_13count,ZT16_14count,ZT16_15count,ZT16_16count)
ZT18 <- cbind(ZT18_1count,ZT18_2count,ZT18_3count,ZT18_5count,ZT18_7count,ZT18_8count,ZT18_9count,ZT18_10count,ZT18_11count,ZT18_12count,ZT18_13count,ZT18_14count,ZT18_5count,ZT18_16count)
ZT20 <- cbind(ZT20_1count,ZT20_3count,ZT20_4count,ZT20_5count,ZT20_7count,ZT20_8count,ZT20_9count,ZT20_10count,ZT20_11count,ZT20_12count,ZT20_13count,ZT20_14count,ZT20_15count,ZT20_16count)
ZT22 <- cbind(ZT22_1count,ZT22_2count,ZT22_3count,ZT22_4count,ZT22_5count,ZT22_8count,ZT22_9count,ZT22_10count,ZT22_11count,ZT22_12count,ZT22_13count,ZT22_14count,ZT22_15count,ZT22_16count)
ZT24 <- cbind(ZT24_1count,ZT24_2count,ZT24_4count,ZT24_5count,ZT24_6count,ZT24_7count,ZT24_8count,ZT24_9count,ZT24_10count,ZT24_12count,ZT24_13count,ZT24_14count,ZT24_15count,ZT24_16count)

count <- cbind(ZT2,ZT4,ZT6,ZT8,ZT10,ZT12,ZT14,ZT16,ZT18,ZT20,ZT22,ZT24)
write.table(count, file="lab/RawData/finalcountALL.txt", sep='\t')
