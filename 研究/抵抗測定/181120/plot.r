png("plot.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(130.0,400.0)
YLIM<-c(0,0.13)
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[2],data1[5]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="p",col="red",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("181120_heating_sample3ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="blue",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("test_ch1_011.csv",header=F)
plot(data.frame(data3[2],data3[5]*2),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="blue",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("test_ch2_009.csv",header=F)
plot(data.frame(data4[2],data4[5]*2),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="red",cex=0.1)

dev.off()  