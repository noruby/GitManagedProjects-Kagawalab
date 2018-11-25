png("plot_temp.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(0,350.0)
YLIM<-c(330,370)
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[1]/60,data1[2]-0.3*data1[1]/60),xlim=XLIM,#ylim=YLIM,
     xlab="Time(min)",ylab="Temperature(K)",type="p",col="red",cex=0.1)
dev.off()  
#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/