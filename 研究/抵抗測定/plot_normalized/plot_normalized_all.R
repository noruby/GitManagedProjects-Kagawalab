png("plot_normalized_all.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(300.0,400.0)
YLIM<-c(0,1.2)
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[2],data1[5]/0.035866),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Normalized Resistance (@300K)",type="l",col="black",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("181120_heating_sample3ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.029887),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("181126_heating_sample5ch2_002.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.005451),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("181126_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181126_heating_sample7ch1_002.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data6 <- read.csv("181126_heating_sample3ch2_001.csv",header=F)
plot(data.frame(data6[2],data6[5]/0.050021),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="magenta",cex=0.1)
par(new=TRUE) #
data7 <- read.csv("181126_heating_sample6ch1_001.csv",header=F)
plot(data.frame(data7[2],data7[5]/0.007315),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="gray",cex=0.1)


legend("topright", col=c("black","red","green3","blue","magenta","gray"), 
       legend=c("sample2: Ge0.5%/1050C/quenched","sample3-1: Ge0.1%/1050C/quenched","sample5: (Ge1%)/400C/quenched ","sample7: Ge1%/arc-high-power","sample3-2: Ge0.1%/1050C/quenched","sample6: Ge1%/1050C/slow-cooled"),pch=c(1,1))


dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/