library(ALDEx2)
data(selex)
#subset only the last 400 features for efficiency
selex.sub <- selex[1:400,]
conds <- c(rep("NS", 7), rep("S", 7))
x.all <- aldex(selex.sub, conds, mc.samples=16, test="t", effect=TRUE,
               include.sample.summary=FALSE, denom="all", verbose=FALSE)
par(mfrow=c(1,2))
aldex.plot(x.all, type="MA", test="welch", xlab="Log-ratio abundance",ylab="Difference")
aldex.plot(x.all, type="MW", test="welch", xlab="Dispersion",
           ylab="Difference")

#Makes new data from sample, so other tests can be ran
x <- aldex.clr(selex.sub, conds, mc.samples=16, denom="all", verbose=F)
x.tt <- aldex.ttest(x, paired.test=FALSE, verbose=FALSE)
x.effect <- aldex.effect(x, verbose=FALSE)
x.all <- data.frame(x.tt,x.effect)

par(mfrow=c(1,2))
aldex.plot(x.all, type="MA", test="welch")
aldex.plot(x.all, type="MW", test="welch")

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

# small synthetic dataset for illustration
# denominator features in x@denominator
x.e <- aldex.effect(x)
plot(x.e$diff.win, x.e$diff.btw, pch=19, col=rgb(0,0,0,0.1), cex=0.5, xlab="dispersion", ylab="difference", main="all")
points(x.e$diff.win[x@denom], x.e$diff.btw[x@denom], pch=19, col=rgb(0.8,0.5,0,0.7), cex=0.5)
points(x.e$diff.win[47:86], x.e$diff.btw[47:86], col=rgb(0.8,0,0,0.7), cex=0.5)
points(x.e$diff.win[980:1000], x.e$diff.btw[980:1000], col=rgb(0.8,0,0,0.7), cex=0.5)
abline(0,1)
abline(0,-1)
abline(h=0, col="gray", lty=2)
abline(0,-1,lty=2)