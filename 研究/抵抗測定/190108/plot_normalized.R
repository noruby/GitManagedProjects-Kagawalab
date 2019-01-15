png("plot.png", width = 700, height = 600)  # 描画デバイスを開く
XLIM<-c(0.0,300)
YLIM<-c(0,2)
data <- read.csv("190108_SnGe6_ch1_002.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="o",col="black",cex=0.5)
par(new=TRUE) #
legend("topright", col=c("black"), legend=c("Before pulse (190108)"),pch=c(1),lty=c(1))
dev.off()  

png("trans.png", width = 700, height = 600)  # 描画デバイスを開く
XLIM<-c(2,6.5)
YLIM<-c(1.7,2)
data <- read.csv("190108_SnGe6_ch1_004.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",type="o",col="black",cex=0.5)
par(new=TRUE) #
legend("topright", col=c("black"), legend=c("Before pulse (190108)"),pch=c(1),lty=c(1))
dev.off()  

png("comparison.png", width = 700, height = 600)  # 描画デバイスを開く
XLIM<-c(0.0,300.0)
YLIM<-c(0.000001,1.5)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Temperature(K)",ylab="Resistance (Ohm)",log="y",type="o",col="gray",cex=0.5)
par(new=TRUE) #
data <- read.csv("181213_sample6_ch1-2_afterpulse2_005.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="violet",cex=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",cex=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_005.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="red",cex=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_afterpulse_006.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="red",cex=0.5)
par(new=TRUE) #
data <- read.csv("190108_SnGe6_ch1_002.csv",header=F)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="black",cex=0.5)
par(new=TRUE) #
legend("bottomright", col=c("gray","violet","blue","red","black"), legend=c("Before pulse (181213)","After pulse (181213)", "Before pulse (181228)","After pulse (181228)","Before pulse (190108)"),pch=c(1),lty=c(1))
dev.off()  

png("invT_normalizedR.png", width = 700, height = 600)  # 描画デバイスを開く
XLIM<-c(0.002,0.005)
YLIM<-c(0.6,1.9)
data <- read.csv("181213_sample6_ch1-2_001.csv",header=F)
plot(data.frame(1/data[3],data[6]/0.013379),xlim=XLIM,ylim=YLIM,xlab="1/T(1/K)",ylab="Normalized Resistance@290K (Ohm)",log="y",type="o",col="gray",cex=0.5)
par(new=TRUE) #
data <- read.csv("181228_SnGe6_ch1_001.csv",header=F)
plot(data.frame(1/data[3],data[7]/0.019992),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="blue",cex=0.5)
par(new=TRUE) #
data <- read.csv("190108_SnGe6_ch1_002.csv",header=F)
plot(data.frame(1/data[3],data[7]/0.061753),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="black",cex=0.5)
par(new=TRUE) #
xx<-seq(0,500, length=5000) 
yy<-exp(-450/290)*exp(450/xx)
plot(1/xx,yy,xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="green",cex=1,lty="dashed")
par(new=TRUE) #
abline(v=1/300, col='black', lwd=1, lty=2)
abline(v=1/320, col='black', lwd=1, lty=2)
abline(v=1/340, col='black', lwd=1, lty=2)
abline(v=1/360, col='black', lwd=1, lty=2)
abline(v=1/380, col='black', lwd=1, lty=2)
abline(h=1, col='black', lwd=1, lty=2)
abline(h=0.9, col='black', lwd=1, lty=2)
abline(h=0.8, col='black', lwd=1, lty=2)
abline(h=0.7, col='black', lwd=1, lty=2)
abline(h=0.6, col='black', lwd=1, lty=2)

legend("bottomright", col=c("gray","blue","black"), legend=c("Before pulse (181213)", "Before pulse (181228)","Before pulse (190108)"),pch=c(1),lty=c(1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/