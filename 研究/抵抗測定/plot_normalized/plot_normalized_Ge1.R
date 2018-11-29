png("plot_normalized_Ge1.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(300.0,380.0)
YLIM<-c(0,1.2)
data3 <- read.csv("181126_heating_sample5ch2_002.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.005451),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("181126_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181126_heating_sample7ch1_002.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data7 <- read.csv("181126_heating_sample6ch1_001.csv",header=F)
plot(data.frame(data7[2],data7[5]/0.007315),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="gray",cex=0.1)
par(new=TRUE) #
data2 <- read.csv("181127_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data3 <- read.csv("181127_heating_sample7ch1_003.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data4 <- read.csv("181127_heating_sample7ch2_001.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="magenta",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181127_heating_sample7ch2_003.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="magenta",cex=0.1)


legend("topright", col=c("green3","blue","gray","red","magenta"), 
       legend=c("sample5: (Ge1%)/400C/quenched ","sample7-1: Ge1%/arc-high-power","sample6: Ge1%/1050C/slow-cooled","sample7-2: Ge1%/arc-high-power","sample7-3: Ge1%/arc-high-power"),pch=c(1,1))


dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/