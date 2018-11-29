png("plot_normalized_1050quenched.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(300.0,380.0)
YLIM<-c(0,1.2)
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[2],data1[5]/0.035866),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Normalized Resistance (@300K)",type="l",col="black",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("181120_heating_sample3ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.029887),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data6 <- read.csv("181126_heating_sample3ch2_001.csv",header=F)
plot(data.frame(data6[2],data6[5]/0.050021),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="magenta",cex=0.1)

legend("topright", col=c("black","red","magenta"), 
       legend=c("sample2: Ge0.5%/1050C/quenched","sample3-1: Ge0.1%/1050C/quenched","sample3-2: Ge0.1%/1050C/quenched"),pch=c(1,1))


dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/