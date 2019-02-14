png("plot_normalized.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(320.0,380.0)
YLIM<-c(0,1.2)
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[2],data1[5]/0.035866),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Normalized Resistance (@300K)",type="o",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
data2 <- read.csv("181120_heating_sample3ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.029887),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
data5 <- read.csv("181126_heating_sample3ch2_001.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.050021),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
data6 <- read.csv("181126_heating_sample6ch1_001.csv",header=F)
plot(data.frame(data6[2],data6[5]/0.007315),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="green3",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topright", col=c("red","blue","black","green3"), legend=c("sample2","sample3-1","sample3-2","sample6"),pch=c(1),lty=c(1))
dev.off()  

png("plot_normalized2.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(320.0,400.0)
YLIM<-c(0,1.2)
data2 <- read.csv("181126_heating_sample5ch2_002.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.005451),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="R/R(300K)",type="o",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
data3 <- read.csv("181126_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
data4 <- read.csv("181126_heating_sample7ch1_002.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
data2 <- read.csv("181127_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
data3 <- read.csv("181127_heating_sample7ch1_003.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
data4 <- read.csv("181127_heating_sample7ch2_001.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="green3",cex=0.1,tcl=0.5)
par(new=TRUE) #
data5 <- read.csv("181127_heating_sample7ch2_003.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=0.1,tcl=0.5)
legend("topright", col=c("red","blue","black","green3"), legend=c("sample5","sample7-1","sample7-2","sample7-3"),pch=c(1,1),lty=c(1))
dev.off()  

png("sample6.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(331.0,359.0)
YLIM<-c(0.0,1)
data6 <- read.csv("181126_heating_sample6ch1_001.csv",header=F)
par(mar=c(8,8,3,3),mgp=c(4.2,0.8,0))
plot(data.frame(data6[2],data6[5]/0.007315),xlim=XLIM,ylim=YLIM,xlab="",ylab="R/R(300K)",type="o",col="blue",cex.lab=4,axes=FALSE)
axis(2,seq(0.5,1,by=1),tcl= 1.5,lwd = 3,cex.axis=4)
axis(2,seq(0,1,by=1),tcl= 1.5,lwd = 3,cex.axis=4)
axis(2,seq(0,1,by=0.1),tcl= 1,lwd = 3,labels = FALSE)
axis(4,seq(0,1,by=0.5),tcl= 1.5,lwd = 3,labels = FALSE)
axis(4,seq(0,1,by=0.1),tcl= 1,lwd = 3,labels = FALSE)
par(mgp=c(7,2,0))
axis(1,seq(300,400,by=10),tcl= 1.5,lwd = 3,cex.axis=4)
axis(3,seq(300,400,by=10),tcl= 1.5,lwd = 3,labels = FALSE)
box(lwd =3)
#legend("topright", col=c("red"), legend=c("sample6"),lwd = 3,pch=c(1),cex=4,pt.cex = 4)
dev.off()  


png("plot_normalized4.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(330.0,375.0)
YLIM<-c(0,1)
par(mar=c(6,6,0,0),oma = c(2, 2, 2, 2),mgp=c(4, 1.5, 0))
data2 <- read.csv("181126_heating_sample5ch2_002.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.005451),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Normalized Resistance (@300K)",type="o",cex.lab=2,col="red",lwd = 3,axes=FALSE)
par(new=TRUE) #
axis(1,seq(300,400,by=10),tcl= 0.8,lwd = 2,cex.axis=2)
axis(3,seq(300,400,by=10),tcl= 0.8,lwd = 2,labels = FALSE)
axis(2,seq(0,1,by=0.2),tcl= 0.8,lwd = 2,cex.axis=2)
axis(4,seq(0,1,by=0.2),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
dev.off()  

png("plot_normalized3.png", width = 800, height = 1000)  # 描画デバイスを開く
XLIM<-c(330.0,395.0)
YLIM<-c(0,1)
split.screen(figs=c(5,1))
screen(1)
par(mar=c(0,2,0,2),oma=c(1, 1, 1, 1))
data1 <- read.csv("181120_heating_sample2ch2_001.csv",header=F)
plot(data.frame(data1[2],data1[5]/0.035866),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Normalized Resistance (@300K)",type="o",col="red",cex=0.1,tcl=0.5)
legend("topright", col=c("red"), legend=c("sample2"),pch=c(1),lty=c(1))

screen(2)
par(mar=c(0,2,0,2),oma=c(1, 1, 1, 1))
data2 <- read.csv("181120_heating_sample3ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.029887),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
data5 <- read.csv("181126_heating_sample3ch2_001.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.050021),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="black",cex=0.1,tcl=0.5)
legend("topright", col=c("blue","black"), legend=c("sample3-1","sample3-2"),pch=c(1),lty=c(1))

screen(3)
par(mar=c(0,2,0,2),oma=c(1, 1, 1, 1))
data2 <- read.csv("181126_heating_sample5ch2_002.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.005451),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="violet",cex=0.1,tcl=0.5)
legend("topright", col=c("violet"), legend=c("sample5"),pch=c(1),lty=c(1))

screen(4)
par(mar=c(0,2,0,2),oma=c(1, 1, 1, 1))
data6 <- read.csv("181126_heating_sample6ch1_001.csv",header=F)
plot(data.frame(data6[2],data6[5]/0.007315),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="orange",cex=0.1,tcl=0.5)
legend("topright", col=c("green3"), legend=c("sample6"),pch=c(1),lty=c(1))

screen(5)
par(mar=c(0,2,0,2),oma=c(1, 1, 1, 1))
data3 <- read.csv("181126_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
data4 <- read.csv("181126_heating_sample7ch1_002.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.019305),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
data2 <- read.csv("181127_heating_sample7ch1_001.csv",header=F)
plot(data.frame(data2[2],data2[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
data3 <- read.csv("181127_heating_sample7ch1_003.csv",header=F)
plot(data.frame(data3[2],data3[5]/0.033318),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
data4 <- read.csv("181127_heating_sample7ch2_001.csv",header=F)
plot(data.frame(data4[2],data4[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="green3",cex=0.1,tcl=0.5)
par(new=TRUE) #
data5 <- read.csv("181127_heating_sample7ch2_003.csv",header=F)
plot(data.frame(data5[2],data5[5]/0.017845),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=0.1,tcl=0.5)
legend("topright", col=c("blue","black","green3"), legend=c("sample7-1","sample7-2","sample7-3"),pch=c(1,1),lty=c(1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/