png("plot.png", width = 700, height = 600)  # 描画デバイスを開く
XLIM<-c(2,300)
YLIM<-c(0,1)
data <- read.csv("190109_SnGe6_ch2_002.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="o",col="black",cex=0.5)
par(new=TRUE) #
legend("topright", col=c("black"), legend=c("Before pulse (190109)"),pch=c(1),lty=c(1))
dev.off()  
#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/190109