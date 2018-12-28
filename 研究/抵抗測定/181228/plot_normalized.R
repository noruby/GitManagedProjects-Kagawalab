
png("before_after_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0.0001,1)
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",log="y",type="o",col="red",cex=0.3)
legend("topright", col=c("red","blue"), legend=c("Before pulse","After pulse"),pch=c(1,1))
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",cex=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_006.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",cex=0.5)
par(new=TRUE) #
dev.off()  


png("after_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(1,10)
YLIM<-c(-0.001,0.02)
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="o",col="blue",cex=0.5)
legend("topright", col=c("blue"), legend=c("After pulse"),pch=c(1,1))
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_004_modified.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="o",col="blue",cex=0.5)
par(new=TRUE) #

dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/