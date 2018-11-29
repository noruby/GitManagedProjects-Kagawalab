png("plot_normalized.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(300.0,400.0)
YLIM<-c(0,1)
data2 <- read.csv("181126_heating_sample5ch2_002.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.005451),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("181126_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("181126_heating_sample7ch1_002.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181126_heating_sample3ch2_001.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.050021),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="magenta",cex=0.1)
par(new=TRUE) #
data6 <- read.csv("181126_heating_sample6ch1_001.csv",header=F)
plot(data.frame(data6[2],data6[5]/0.007315),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=0.1)



legend("topright", col=c("red","blue"), legend=c("Ge1% @400C (sample5)","Ge1% arc-high-power (sample7)"),pch=c(1,1))


dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/