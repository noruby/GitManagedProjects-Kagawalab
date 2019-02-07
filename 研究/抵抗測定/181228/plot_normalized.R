png("before_after_pulse_log.png", width = 700, height = 500)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0.01,1)
par(mar=c(4,6,3,2),oma=c(1, 1, 1, 1))
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",log="y",type="o",col="red",cex.lab=2,axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_006.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
axis(2,c(0.01,0.1,1),tcl= 0.8,lwd = 2,cex.axis=2)
axis(2,seq(0.2,0.9,by=0.1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(0.02,0.09,by=0.01),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,c(0.01,0.1,1),tcl= 0.8,lwd = 2,labels = FALSE)
axis(4,seq(0.2,0.9,by=0.1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(0.02,0.09,by=0.01),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(1,seq(0,300,by=50),tcl= 0.8,lwd = 2,cex.axis=2)
axis(3,seq(0,300,by=50),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
legend("topright", col=c("red","blue"), legend=c("Before pulse","After pulse"),lwd = 2,pch=c(1),cex=2,pt.cex = 2)
dev.off()  

png("comparison2.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(10,290.0)
YLIM<-c(0.1,900)
par(mar=c(4,6,3,2),oma=c(1, 1, 1, 1))
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],1000*data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab=expression(paste("Resistance(m",Omega,")")),,log="y",type="o",col="red",cex.lab=2,axes=FALSE)
par(new=TRUE) #
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],1000*data[6]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
par(new=TRUE) #
axis(2,c(1,10,100),tcl= 0.8,lwd = 2,cex.axis=2)
axis(2,c(0.1),tcl= 0.8,lwd = 2,cex.axis=2)
axis(2,seq(0.2,0.9,by=0.1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(2,9,by=1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(20,90,by=10),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(200,900,by=100),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,c(1,10,100),tcl= 0.8,lwd = 2,labels = FALSE)
axis(4,seq(0.2,0.9,by=0.1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(2,9,by=1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(20,90,by=10),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(200,900,by=100),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(1,seq(0,300,by=50),tcl= 0.8,lwd = 2,cex.axis=2)
axis(3,seq(0,300,by=50),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
legend("topright", col=c("red","blue"), legend=c("Before pulse","After pulse1"),lwd = 2,pch=c(1),cex=2,pt.cex = 2)
dev.off()  

png("comparison3.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(10,290.0)
YLIM<-c(0.1,900)
par(mar=c(4,6,3,2),oma=c(1, 1, 1, 1))
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="green3",axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_006.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="green3",axes=FALSE)
axis(2,c(1,10,100),tcl= 0.8,lwd = 2,cex.axis=2)
axis(2,c(0.1),tcl= 0.8,lwd = 2,cex.axis=2)
axis(2,seq(0.2,0.9,by=0.1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(2,9,by=1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(20,90,by=10),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(2,seq(200,900,by=100),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,c(1,10,100),tcl= 0.8,lwd = 2,labels = FALSE)
axis(4,seq(0.2,0.9,by=0.1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(2,9,by=1),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(20,90,by=10),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(4,seq(200,900,by=100),tcl= 0.6,lwd = 1.5,labels = FALSE)
axis(1,seq(0,300,by=50),tcl= 0.8,lwd = 2,cex.axis=2)
axis(3,seq(0,300,by=50),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
legend("topright", col=c("blue","green3"), legend=c("After pulse1","After pulse2"),lwd = 2,pch=c(1),cex=2,pt.cex = 2)
dev.off()  

png("before_after_pulse_comparison.png", width = 600, height = 900)  # 描画デバイスを開く
XLIM<-c(2,7)
split.screen(figs=c(2,1))
screen(1)
YLIM<-c(0,1100)
par(mar=c(0,8,6,0),oma = c(2, 2, 2, 2),mgp=c(4, 1.5, 0))
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab=expression(paste("Resistance(m",Omega,")")),type="o",lwd = 3,col="red",cex.lab=3,axes=FALSE)
axis(1,seq(0,50,by=1),tcl= 0.8,lwd = 2,cex.axis=3)
axis(3,seq(0,50,by=1),tcl= 0.8,lwd = 2,labels = FALSE)
axis(2,seq(0,1000,by=500),tcl= 0.8,lwd = 2,cex.axis=3)
axis(4,seq(0,1000,by=500),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
legend("topleft", col=c("red"), legend=c("Before pulse"),lwd = 2,pch=c(1),cex=3,pt.cex = 3)
screen(2)
YLIM<-c(0,30)
par(mar=c(6,8,0,0),mgp=c(4, 1.5, 0))
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",lwd = 3,col="blue",cex.lab=2,axes=FALSE)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_004_modified.csv",header=F)
plot(data.frame(data[3],1000*data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab=expression(paste("Resistance(m",Omega,")")),type="o",lwd = 3,col="blue",cex.lab=3,axes=FALSE)
axis(1,seq(0,50,by=1),tcl= 0.8,lwd = 2,cex.axis=3, )
axis(3,seq(0,50,by=1),tcl= 0.8,lwd = 2,labels = FALSE)
axis(2,seq(0,20,by=10),tcl= 0.8,lwd = 2,cex.axis=3)
axis(4,seq(0,20,by=10),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
legend("topleft", col=c("blue"), legend=c("After pulse"),lwd = 2,pch=c(1),cex=3,pt.cex = 3)
dev.off()  

png("after_pulse.png", width = 400, height = 400)  # 描画デバイスを開く
XLIM<-c(2,6)
YLIM<-c(-0.001,0.022)
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="o",col="blue",cex=0.5,tcl=0.5)
legend("topright", col=c("blue"), legend=c("After pulse"),pch=c(1,1))
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_004_modified.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.5,tcl=0.5)
par(new=TRUE) #

png("after_pulse2.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(15,200)
YLIM<-c(0.0,0.03)
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="o",col="blue",cex=0.5,tcl=0.5)
legend("topright", col=c("blue"), legend=c("After pulse"),pch=c(1,1))
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_006.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.5,tcl=0.5)
par(new=TRUE) #


png("comparison.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0.000001,1.2)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",log="y",type="o",col="violet",cex=0.5,tcl=0.5)
par(new=TRUE) #
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="black",cex=0.5,tcl=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="red",cex=0.5,tcl=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",cex=0.5,tcl=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_006.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",cex=0.5,tcl=0.5)
par(new=TRUE) #
legend("topright", col=c("violet","black","red","blue"), legend=c("Before pulse (181213)","After pulse (181213)", "Before pulse (181228)","After pulse (181228)"),pch=c(1,1))
dev.off()  



#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/