## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("ggloor/ALDEx_bioc")

## ---- eval=FALSE--------------------------------------------------------------
#  source("https://bioconductor.org/biocLite.R")
#  biocLite("ALDEx2")

## ---- echo=T, message=F, error=F, warning=F, fig.cap="MA and Effect plots of ALDEx2 output. The left panel is an Bland-Altman or MA plot that shows the relationship between (relative) Abundance and Difference. The right panel is an effect plot that shows the relationship between Difference and Dispersion. In both plots features that are not significant are in grey or black. Features that are statistically significant are in red. The Log-ratio abundance axis is the clr value for the feature."----
library(ALDEx2)
data(selex)
#subset only the last 400 features for efficiency
selex.sub <- selex[1:400,]

conds <- c(rep("NS", 7), rep("S", 7))
x.all <- aldex(selex.sub, conds, mc.samples=16, test="t", effect=TRUE,
               include.sample.summary=FALSE, denom="all", verbose=FALSE)

par(mfrow=c(1,2))
aldex.plot(x.all, type="MA", test="welch", xlab="Log-ratio abundance",
           ylab="Difference")
aldex.plot(x.all, type="MW", test="welch", xlab="Dispersion",
           ylab="Difference")

## ----echo=T, eval=TRUE, message=F, error=F, warning=F, results="hide"---------
# the output is in the S3 object 'x'
x <- aldex.clr(selex.sub, conds, mc.samples=16, denom="all", verbose=F)

## ----echo=TRUE, eval=TRUE, results="hide"-------------------------------------
x.tt <- aldex.ttest(x, paired.test=FALSE, verbose=FALSE)

## ----echo=TRUE, eval=FALSE, results="hide"------------------------------------
#  x.kw <- aldex.kw(x)

## ----echo=T, eval=TRUE, message=F, error=F, warning=F, results="hide"---------
x.effect <- aldex.effect(x, CI=T, verbose=FALSE)

## ----echo=TRUE, eval=TRUE, results="hide"-------------------------------------
x.all <- data.frame(x.tt,x.effect)

## ----fig=TRUE,echo=TRUE,width=7,height=4, fig.cap="Output from aldex.plot function. The left panel is the MA plot, the right is the MW (effect) plot. In both plots red represents features called as differentially abundant with q $<0.1$; grey are abundant, but not differentially abundant; black are rare, but not differentially abundant. This function uses the combined output from the aldex.ttest and aldex.effect functions "----

par(mfrow=c(1,2))
aldex.plot(x.all, type="MA", test="welch")
aldex.plot(x.all, type="MW", test="welch")

## ----fig=TRUE,echo=FALSE,width=7,height=4, fig.cap="Comparing the mean effect with the 95\\% CI.  The left panel is MA plot, the right is the MW (effect) plot. In both plots red points indicate features that have an expected effect value of $>2$; those with a blue circle have the 95\\% CI that does not overlap 0; and grey are features that are not of interest. This plot uses only the output of the aldex.effect function. The grey lines in the effect plot show the effect=2 isopleth."----

sgn <- sign(x.effect$effect.low) == sign(x.effect$effect.high)
par(mfrow=c(1,2))
plot(x.effect$rab.all, x.effect$diff.btw, pch=19, cex=0.3, col="grey", xlab="Abundance", ylab="Difference", main="Bland-Altman")
points(x.effect$rab.all[abs(x.effect$effect) >=2], x.effect$diff.btw[abs(x.effect$effect) >=2], pch=19, cex=0.5, col="red")
points(x.effect$rab.all[sgn], x.effect$diff.btw[sgn], cex=0.7, col="blue")

plot(x.effect$diff.win, x.effect$diff.btw, pch=19, cex=0.3, col="grey",xlab="Dispersion", ylab="Difference", main="Effect")
points(x.effect$diff.win[abs(x.effect$effect) >=2], x.effect$diff.btw[abs(x.effect$effect) >=2], pch=19, cex=0.5, col="red")
points(x.effect$diff.win[sgn], x.effect$diff.btw[sgn], cex=0.7, col="blue")
abline(0,2, lty=2, col="grey")
abline(0,-2, lty=2, col="grey")

## ----fig=TRUE,echo=TRUE,width=7,height=4, message=F, error=F, warning=F, fig.cap="Comparing the glm and t-test. Plots of the expected P values for variables output from the glm function with model A (random predictors), and model B (actual study design groups) compared to the P values output by the Welch's t-test. This toy model shows how to use a generalized linear model within theALDEx2 framework. All values are the expected value of the test statistic after correction for multiple hypothesis testing."----

data(selex)
selex.sub <- selex[1:500, ]
covariates <- data.frame("A" = sample(0:1, 14, replace = TRUE),
                         "B" = c(rep(0, 7), rep(1, 7)),
                         "Z" = sample(c(1,2,3), 14, replace=TRUE))
mm <- model.matrix(~ A + Z + B, covariates)
x <- aldex.clr(selex.sub, mm, mc.samples=4, denom="all", verbose=F)
glm.test <- aldex.glm(x, mm)
glm.effect <- aldex.glm.effect(x)


## ---- eval=FALSE--------------------------------------------------------------
#  aldex.plot(glm.effect[["B"]], test="effect", cutoff=2)
#  sig <- glm.test[,20]<0.05
#  points(glm.effect[["B"]]$diff.win[sig],
#      glm.effect[["B"]]$diff.btw[sig], col="blue")
#  sig <- glm.test[,20]<0.2
#  points(glm.effect[["B"]]$diff.win[sig],
#      glm.effect[["B"]]$diff.btw[sig], col="blue")

## ---- fig=TRUE, echo=TRUE,  fig.cap="Relationship between effect, difference, and P values. We can see that the effect size has a much tighter relationship to the P value than does the raw difference. The effect size is relatively stable across datasets, but the P value become progressively smaller as the sample size is increased. "----
par(mfrow=c(1,2))
plot(x.all$effect, x.all$we.ep, log="y", cex=0.7, col=rgb(0,0,1,0.2),
     pch=19, xlab="Effect size", ylab="P value", main="Effect size plot")
points(x.all$effect, x.all$we.eBH, cex=0.7, col=rgb(1,0,0,0.2),
       pch=19)
abline(h=0.05, lty=2, col="grey")
legend(15,1, legend=c("P value", "BH-adjusted"), pch=19, col=c("blue", "red"))

plot(x.all$diff.btw, x.all$we.ep, log="y", cex=0.7, col=rgb(0,0,1,0.2),
     pch=19, xlab="Difference", ylab="P value", main="Volcano plot")
points(x.all$diff.btw, x.all$we.eBH, cex=0.7, col=rgb(1,0,0,0.2),
       pch=19)
abline(h=0.05, lty=2, col="grey")


## ----fig=TRUE,echo=TRUE,fig.small=TRUE, fig.cap="Differential abundance in the selex dataset using the Welch's t-test or Wilcoxon rank test. Features identified by both tests shown in red. Features identified by only one test are shown in blue dots.  Non-significant features represent rare features if black and abundant features if grey dots."----

# identify which values are significant in both the t-test and glm tests
found.by.all <- which(x.all$we.eBH < 0.05 & x.all$wi.eBH < 0.05)

# identify which values are significant in fewer than all tests
found.by.one <- which(x.all$we.eBH < 0.05 | x.all$wi.eBH < 0.05)

# plot the within and between variation of the data
plot(x.all$diff.win, x.all$diff.btw, pch=19, cex=0.3, col=rgb(0,0,0,0.3),
     xlab="Dispersion", ylab="Difference")
points(x.all$diff.win[found.by.one], x.all$diff.btw[found.by.one], pch=19,
       cex=0.7, col=rgb(0,0,1,0.5))
points(x.all$diff.win[found.by.all], x.all$diff.btw[found.by.all], pch=19,
       cex=0.7, col=rgb(1,0,0,1))
abline(0,1,lty=2)
abline(0,-1,lty=2)

## ----echo=TRUE, eval=FALSE, results="hide"------------------------------------
#  # small synthetic dataset for illustration
#  # denominator features in x@denominator
#  
#  data(synth2)
#  blocks <- c(rep("N", 10),rep("S", 10))
#  x <- aldex.clr(synth2, blocks, denom="all")
#  x.e <- aldex.effect(x)
#  plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="all")
#  points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
#  points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
#  points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
#  abline(0,1)
#  abline(0,-1)
#  abline(h=0, col="gray", lty=2)
#  

## ----fig=TRUE,echo=FALSE, message=F, error=F, warning=F,results="hide",fig.wide=TRUE, fig.cap="Differential abundance in a synthetic dataset using different denominators for the clr calculation. In this data 2% of the features are modelled to be sparse in one group but not the other. Features modelled to be different between two groups are shown in red. Features that are non-significant are in grey (or brown). Features used in the denominator shown in brown: the geometric mean of these features is used as the denominator when calculating the clr transformation. Lines of constant effect are drawn at 0, and  $\\pm$ 1. Note that the iqlr and lvha denominators place the middle of the non-asymmetric features at a between group difference of 0."----

# plot it
par(mfrow=c(1,3))
data(synth2)
blocks <- c(rep("N", 10),rep("S", 10))
x <- aldex.clr(synth2, blocks, denom="all")
x.e <- aldex.effect(x)

plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="all")
points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
abline(0,1)
abline(0,-1)
abline(h=0, col="gray", lty=2)

x <- aldex.clr(synth2, blocks, denom="iqlr")
x.e <- aldex.effect(x)
plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="iqlr")
points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
abline(0,1)
abline(0,-1)
abline(h=0, col="gray", lty=2)

x <- aldex.clr(synth2, blocks, denom="lvha")
x.e <- aldex.effect(x)
plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="lvha")
points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
abline(0,1)
abline(0,-1)
abline(h=0, col="gray", lty=2)



## ----session------------------------------------------------------------------
sessionInfo()