log10Tck <- function(side, type){
  lim <- switch(side, 
                x = par('usr')[1:2],
                y = par('usr')[3:4],
                stop("side argument must be 'x' or 'y'"))
  at <- floor(lim[1]) : ceil(lim[2])
  return(switch(type, 
                minor = outer(1:9, 10^(min(at):max(at))),
                major = 10^at,
                stop("type argument must be 'major' or 'minor'")
  ))
}

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

legend("topright", col=c("red","blue"), legend=c("Before pulse","After pulse"),pch=c(1),cex=2,pt.cex = 2)
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