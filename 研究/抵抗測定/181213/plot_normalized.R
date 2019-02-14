png("after_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0,300.0)
YLIM<-c(0,0.013)
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="l",col="blue",cex=0.1, tcl=0.5)
legend("topright", col=c("blue"), legend=c("After pulse"),pch=c(1,1))
dev.off()  

png("after_pulse2.png", width = 600, height = 700)  # 描画デバイスを開く
XLIM<-c(2.1,4.9)
YLIM<-c(-0.05,0.25)
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
par(mar=c(8,8,3,3),mgp=c(4.2,0.8,0))
plot(data.frame(data[3],1000*data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",expression(paste("Resistance(m",Omega,")")),type="p",col="red",cex.lab=4,axes=FALSE)
axis(2,seq(0,0.3,by=0.1),tcl= 1.5,lwd = 3,cex.axis=4)
axis(4,seq(0,0.3,by=0.1),tcl= 1.5,lwd = 3,labels = FALSE)
par(mgp=c(7,2,0))
axis(1,seq(0,10,by=1),tcl= 1.5,lwd = 3,cex.axis=4)
axis(3,seq(0,10,by=1),tcl= 1.5,lwd = 3,labels = FALSE)
box(lwd =3)
legend("topright", col=c("red"), legend=c("After pulse"),lwd = 3,pch=c(1),cex=4,pt.cex = 4)
dev.off()  

png("before_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0,1.2)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="l",col="red",cex=0.1, tcl=0.5)
legend("topright", col=c("red"), legend=c("Before pulse"),pch=c(1,1))
dev.off()  

png("before_pulse_Tinv.png", width = 500, height = 400)  # 描画デバイスを開く
XLIM<-c(0.004,0.02)
YLIM<-c(3,100)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(1/data[3],1/data[6]),xlim=XLIM,ylim=YLIM,xlab="1/T (1/K)",ylab="Conductance (S)",log="y",type="l",col="red",cex=0.1, tcl=0.5)
legend("topright", col=c("red"), legend=c("Before pulse"),pch=c(1,1))
dev.off()  

png("before_after_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0.00003,1.2)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",log="y",type="l",col="red",cex=0.1, tcl=0.5)
par(new=TRUE) #
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",log="y",type="l",col="blue",cex=0.1, tcl=0.5)
legend("topright", col=c("red","blue"), legend=c("Before pulse","After pulse"),pch=c(1,1))
par(new=TRUE) #
dev.off()  

png("before_after_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(240.0,300.0)
YLIM<-c(0,0.02)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="l",col="red",cex=0.1, tcl=0.5)
par(new=TRUE) #
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="l",col="blue",cex=0.1, tcl=0.5)
legend("topright", col=c("red","blue"), legend=c("Before pulse","After pulse"),pch=c(1,1))
par(new=TRUE) #
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/