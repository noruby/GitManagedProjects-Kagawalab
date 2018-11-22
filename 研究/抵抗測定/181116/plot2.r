png("plot2.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(0.003,0.011)
YLIM<-c(0.2,1.1)
data1 <- read.csv("test_ch1_011.csv",header=F)
plot(data.frame(1/data1[2],0.029887/(data1[5]*2)),xlim=XLIM,ylim=YLIM,xlab="Inverse Temperature(1/K)",ylab="Admittance(1/Ohm)",type="p",col="red",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("test_ch2_009.csv",header=F)
plot(data.frame(1/data2[2],0.035866/(data2[5]*2)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="blue",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("181114_sample3_001.csv",header=F)
plot(data.frame(1/data3[2],0.029887/data3[5]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="green",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("181114_sample3_002.csv",header=F)
plot(data.frame(1/data4[2],0.035866/data4[5]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="gray",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181114_sample3_003.csv",header=F)
plot(data.frame(1/data5[2],0.035866/data5[5]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="gray",cex=0.1)

legend("topright", col=c("blue","red"), legend=c("Ge0.1% (sample3)","Ge0.5% (sample2)"),pch=c(1,1))

dev.off()  