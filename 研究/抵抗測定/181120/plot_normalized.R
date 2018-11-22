png("plot_normalized.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(130.0,400.0)
YLIM<-c(0,3)
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[2],data1[5]/0.035866),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Normalized Resistance (@300K)",type="p",col="red",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("181120_heating_sample3ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.029887),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="blue",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("test_ch1_011.csv",header=F)
plot(data.frame(data3[2],data3[5]*2/0.029887),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="blue",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("test_ch2_009.csv",header=F)
plot(data.frame(data4[2],data4[5]*2/0.035866),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="red",cex=0.1)

legend("topright", col=c("blue","red"), legend=c("Ge0.1% (sample3)","Ge0.5% (sample2)"),pch=c(1,1))


dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/