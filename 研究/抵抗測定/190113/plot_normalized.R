data1 <- read.csv("190113_SnGe6_ch2_pulse4.csv",skip=9)
data2 <- read.csv("190113_SnGe6_ch2_pulse5.csv",skip=9)
data3 <- read.csv("190113_SnGe6_ch2_pulse6.csv",skip=9)
data4 <- read.csv("190113_SnGe6_ch2_pulse7.csv",skip=9)
T1 <- 1.67879E-05
T2 <- 1.42407E-05
T3 <- 1.60932E-05
T4 <- 1.95666E-05
coll <- c("red","blue","violet","black")
legendd <- c("0.15A(#4)","0.20A(#5)","0.23A(#6)","0.25mA(#7)")
XLIM<-c(0,11)


png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0,0.02)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data1[1]-T1)*TT,-data1[2]/(data1[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data2[1]-T2)*TT,-data2[2]/(data2[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data3[1]-T3)*TT,-data3[2]/(data3[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data4[1]-T4)*TT,-data4[2]/(data4[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topleft", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Resistance_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0.0001,0.1)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data1[1]-T1)*TT,-data1[2]/(data1[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data2[1]-T2)*TT,-data2[2]/(data2[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data3[1]-T3)*TT,-data3[2]/(data3[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data4[1]-T4)*TT,-data4[2]/(data4[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("bottomleft", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Current_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0.0001,0.3)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data1[1]-T1)*TT,-data1[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data2[1]-T2)*TT,-data2[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data3[1]-T3)*TT,-data3[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data4[1]-T4)*TT,-data4[3]/5.4),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topright", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

png("Current_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
YLIM<-c(0.01,1)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data1[1]-T1)*TT,-data1[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Current(A)",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data2[1]-T2)*TT,-data2[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data3[1]-T3)*TT,-data3[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="violet",cex=0.1,tcl=0.5)
par(new=TRUE) #
plot(data.frame((data4[1]-T4)*TT,-data4[3]/5.4),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #legend("topright", col=coll, legend=legendd,pch=c(1),lty=c(1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/190109/pulse
