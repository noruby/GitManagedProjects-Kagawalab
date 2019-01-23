png("after_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0,300.0)
YLIM<-c(0,0.013)
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="l",col="blue",cex=0.1, tcl=0.5)
legend("topright", col=c("blue"), legend=c("After pulse"),pch=c(1,1))
dev.off()  

png("after_pulse2.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(1,7.0)
YLIM<-c(-0.00005,0.0002)
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="p",col="blue",cex=2, tcl=0.5)
legend("topright", col=c("blue"), legend=c("After pulse"),pch=c(1,1))
dev.off()  

png("before_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0,1.2)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="l",col="red",cex=0.1, tcl=0.5)
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