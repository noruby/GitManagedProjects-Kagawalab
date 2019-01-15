data17 <- read.csv("190112_SnGe6_ch1_pulse17.csv",skip=9)
data18 <- read.csv("190112_SnGe6_ch1_pulse18.csv",skip=9)
data19 <- read.csv("190112_SnGe6_ch1_pulse19.csv",skip=9)
data20 <- read.csv("190112_SnGe6_ch1_pulse20.csv",skip=9)
T17 <- 1.21567E-05
T18 <- 7.9424E-05
T19 <- 1.35461E-05
T20 <- 2.06086E-05
coll <- c("red","blue","violet","black")
legendd <- c("565mA(#17)","645mA(#18)","793mA(#19)","926mA(#20)")
XLIM<-c(0,11)


png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0,0.02)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data17[1]-T17)*TT,-data17[2]/(data17[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data18[1]-T18)*TT,-data18[2]/(data18[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data19[1]-T19)*TT,-data19[2]/(data19[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data20[1]-T20)*TT,-data20[2]/(data20[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topleft", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Resistance_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0.0001,0.1)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data17[1]-T17)*TT,-data17[2]/(data17[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data18[1]-T18)*TT,-data18[2]/(data18[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data19[1]-T19)*TT,-data19[2]/(data19[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data20[1]-T20)*TT,-data20[2]/(data20[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("bottomleft", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Current_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0.0001,1)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data17[1]-T17)*TT,-data17[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data18[1]-T18)*TT,-data18[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data19[1]-T19)*TT,-data19[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data20[1]-T20)*TT,-data20[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topright", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Current_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0.0001,1.5)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data17[1]-T17)*TT,-data17[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Current(A)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data18[1]-T18)*TT,-data18[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data19[1]-T19)*TT,-data19[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data20[1]-T20)*TT,-data20[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #legend("topright", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/190109/pulse
