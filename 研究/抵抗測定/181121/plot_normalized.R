png("resistance5h.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(0,5.0)
YLIM<-c(0.0001,1000000)
data1 <- read.csv("181121_holding250K_sample2ch2_001.csv",header=F)
plot(data.frame(data1[1]/3600,data1[5]),log="y",xlim=XLIM,ylim=YLIM,xlab="Time (hour))",ylab="Resistance (Ohm)",type="p",col="red",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("181121_holding250K_sample3ch1_001.csv",header=F)
plot(data.frame(data2[1]/3600,data2[5]),log="y",xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="p",col="blue",cex=0.1)
legend("topright", col=c("blue","red"), legend=c("Ge0.1% (sample3)","Ge0.5% (sample2)"),pch=c(1,1))

dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/