png("plot_normalized.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(300.0,400.0)
YLIM<-c(0,1)
data2 <- read.csv("181126_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("181126_heating_sample7ch1_003.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("181126_heating_sample7ch2_001.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181126_heating_sample7ch2_003.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)

legend("topright", col=c("blue","blue"), legend=c("sample7-1: Ge1%/arc-high-power","sample7-2: Ge1%/arc-high-power"),pch=c(1,1))

dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/