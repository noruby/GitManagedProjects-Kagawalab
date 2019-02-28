


png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,8)
YLIM<-c(0,1)
data2 <- read.csv("181213_SnGe6_1-2.csv",skip=9)
TT<-3/(6.03899E-05-2.52597E-05)
plot(data.frame((data2[1]-1.52832E-05)*TT,data2[2]/(data2[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181213_SnGe6_1-5.csv",skip=9)
plot(data.frame((data5[1]-1.57077E-05)*TT,data5[2]/(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green",cex=0.1)
par(new=TRUE) #
data8 <- read.csv("181213_SnGe6_1-8.csv",skip=9)
plot(data.frame((data8[1]-2.21819E-05)*TT,data8[2]/(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data10 <- read.csv("181213_SnGe6_1-10.csv",skip=9)
plot(data.frame((data10[1]-1.44341E-05)*TT,data10[2]/(data10[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data11 <- read.csv("181213_SnGe6_1-11.csv",skip=9)
plot(data.frame((data11[1]-2.52597E-05)*TT,data11[2]/(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data12 <- read.csv("181213_SnGe6_1-12.csv",skip=9)
plot(data.frame((data12[1]-2.12267E-05)*TT,data12[2]/(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1)
legend("topleft", col=c("blue","green","gold","violet","red","black"), legend=c("3.78mA(#2)","88.2mA(#5)","450mA(#8)","919mA(#10)","1140mA(#11)","1352mA(#12)"),pch=c(1,1))
dev.off()  

png("Resistance_pulse_log.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-2,10)
YLIM<-c(0.001,1.2)
TT<-3/(6.03899E-05-2.52597E-05)
data2 <- read.csv("181213_SnGe6_1-2.csv",skip=9)
plot(data.frame((data2[1]-1.52832E-05)*TT,data2[2]/(data2[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181213_SnGe6_1-5.csv",skip=9)
plot(data.frame((data5[1]-1.57077E-05)*TT,data5[2]/(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="green",cex=0.1)
par(new=TRUE) #
data8 <- read.csv("181213_SnGe6_1-8.csv",skip=9)
plot(data.frame((data8[1]-2.21819E-05)*TT,data8[2]/(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data10 <- read.csv("181213_SnGe6_1-10.csv",skip=9)
plot(data.frame((data10[1]-1.44341E-05)*TT,data10[2]/(data10[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data11 <- read.csv("181213_SnGe6_1-11.csv",skip=9)
plot(data.frame((data11[1]-2.52597E-05)*TT,data11[2]/(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data12 <- read.csv("181213_SnGe6_1-12.csv",skip=9)
plot(data.frame((data12[1]-2.12267E-05)*TT,data12[2]/(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1)
legend("bottomleft", col=c("blue","green","gold","violet","red","black"), legend=c("3.78mA(#2)","88.2mA(#5)","450mA(#8)","919mA(#10)","1140mA(#11)","1352mA(#12)"),pch=c(1,1))
dev.off()  

png("Current_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-2,10)
YLIM<-c(0.0001,1.5)
TT<-3/(6.03899E-05-2.52597E-05)
data2 <- read.csv("181213_SnGe6_1-2.csv",skip=9)
plot(data.frame((data2[1]-1.52832E-05)*TT,abs(data2[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data5 <- read.csv("181213_SnGe6_1-5.csv",skip=9)
plot(data.frame((data5[1]-1.57077E-05)*TT,abs(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="green",cex=0.1)
par(new=TRUE) #
data8 <- read.csv("181213_SnGe6_1-8.csv",skip=9)
plot(data.frame((data8[1]-2.21819E-05)*TT,abs(data8[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data10 <- read.csv("181213_SnGe6_1-10.csv",skip=9)
plot(data.frame((data10[1]-1.44341E-05)*TT,abs(data10[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data11 <- read.csv("181213_SnGe6_1-11.csv",skip=9)
plot(data.frame((data11[1]-2.52597E-05)*TT,abs(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data12 <- read.csv("181213_SnGe6_1-12.csv",skip=9)
plot(data.frame((data12[1]-2.12267E-05)*TT,abs(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Current(A)",type="l",col="black",cex=0.1)
legend("topright", col=c("blue","green","gold","violet","red","black"), legend=c("3.78mA(#2)","88.2mA(#5)","450mA(#8)","919mA(#10)","1140mA(#11)","1352mA(#12)"),pch=c(1,1))
dev.off()  


png("comparison_selected.png", width = 900, height = 1000)
XLIM<-c(-0.5,7)
TT<-3/(6.03899E-05-2.52597E-05)
split.screen(figs=c(2,1))
screen(1)
YLIM<-c(0.002,3)
par(mar=c(0,10,8,2),mgp=c(6, 1.5, 0))
plot(data.frame((data5[1]-1.57077E-05)*TT,abs(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="o",col="green3",lwd = 3,axes=FALSE)
par(new=TRUE) #
plot(data.frame((data11[1]-2.52597E-05)*TT,abs(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="o",col="black",lwd = 3,axes=FALSE)
par(new=TRUE) #
plot(data.frame((data12[1]-2.12267E-05)*TT,abs(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Current(A)",type="o",col="red",lwd = 3,cex=2,cex.lab=4,axes=FALSE)
axis(1,seq(0,8,by=1),tcl= 1,lwd = 2,cex.axis=4)
axis(3,seq(0,8,by=1),tcl= 1,lwd = 2,labels = FALSE)
axis(2,c(1),tcl= 1.5,lwd = 2,cex.axis=4)
axis(2,c(0.1),tcl= 1.5,lwd = 2,cex.axis=4)
axis(2,c(0.01),tcl= 1.5,lwd = 2,cex.axis=4)
axis(2,seq(2,9,by=1),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(2,seq(0.2,0.9,by=0.1),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(2,seq(0.02,0.09,by=0.01),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(2,seq(0.002,0.009,by=0.001),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(4,c(0.01,0.1,1),tcl= 1.5,lwd = 2,labels = FALSE)
axis(4,seq(0.2,0.9,by=0.1),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(4,seq(0.02,0.09,by=0.01),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(4,seq(0.002,0.009,by=0.001),tcl= 0.8,lwd = 1.5,labels = FALSE)
box(lwd = 2)
legend("topright", col=c("green3","black","red"), legend=c("Pulse 1","Pulse 2","Pulse 3"),lwd = 2,pch=c(1),cex=4,pt.cex=4)
screen(2)
YLIM<-c(1,2300)
par(mar=c(8,10,0,2),mgp=c(5.5, 1.5, 0))
plot(data.frame((data5[1]-1.57077E-05)*TT,1000*data5[2]/(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="green3",lwd = 3,axes=FALSE)
par(new=TRUE) #
plot(data.frame((data11[1]-2.52597E-05)*TT,1000*data11[2]/(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="o",col="black",lwd = 3,axes=FALSE)
par(new=TRUE) #
plot(data.frame((data12[1]-2.12267E-05)*TT,1000*data12[2]/(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab=expression(paste("Resistance (m",Omega,")")),type="o",col="red",lwd = 3,cex.lab=4,axes=FALSE)
axis(2,c(10,100,1000),tcl= 1.5,lwd = 2,cex.axis=4)
axis(2,c(seq(2,9,by=1),seq(20,90,by=10),seq(200,900,by=100)),tcl= 0.8,lwd = 1.5,labels = FALSE)
axis(4,c(10,100,1000),tcl= 1.5,lwd = 2,labels = FALSE)
axis(4,c(seq(2,9,by=1),seq(20,90,by=10),seq(200,900,by=100)),tcl= 0.8,lwd = 1.5,labels = FALSE)
par(mar=c(8,10,0,2),mgp=c(6, 2, 0))
axis(1,seq(0,8,by=1),tcl= 0.8,lwd = 2,cex.axis=4)
axis(3,seq(0,8,by=1),tcl= 0.8,lwd = 2,labels = FALSE)
box(lwd = 2)
#legend("topright", col=c("black","red"), legend=c("1.1A(#13)","1.2A(#14)"),lwd = 2,pch=c(1),cex=4,pt.cex=4)
dev.off()  

png("181213_comparison_selected.png", width = 1000, height = 800)
XLIM<-c(-0.5,7.6)
TT<-3/(6.03899E-05-2.52597E-05)
split.screen(figs=c(2,1))
screen(1)
YLIM<-c(0,1.5)
par(mar=c(0,2,0,2),oma = c(1, 1, 1, 1))
plot(data.frame((data5[1]-1.57077E-05)*TT,abs(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=1,tcl=1,cex.lab=2,cex.axis=2,cex.main=2)
par(new=TRUE) #
plot(data.frame((data11[1]-2.52597E-05)*TT,abs(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=1,tcl=1,cex.lab=2,cex.axis=2,cex.main=2)
par(new=TRUE) #
plot(data.frame((data12[1]-2.12267E-05)*TT,abs(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",type="l",col="black",cex=1,tcl=1,cex.lab=2,cex.axis=2,cex.main=2)
legend("topright", col=c("green3","red","black"), legend=c("88.2mA(#5)","1140mA(#11)","1352mA(#12)"),pch=c(1,1),cex=2,pt.cex = 2)
screen(2)
YLIM<-c(0,0.9)
par(mar=c(0,2,0,2),oma = c(1, 1, 1, 1))
plot(data.frame((data5[1]-1.57077E-05)*TT,data5[2]/(data5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green3",cex=1,tcl=1,cex.lab=2,cex.axis=2,cex.main=2)
par(new=TRUE) #
plot(data.frame((data11[1]-2.52597E-05)*TT,data11[2]/(data11[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=1,tcl=1,cex.lab=2,cex.axis=2,cex.main=2)
par(new=TRUE) #
plot(data.frame((data12[1]-2.12267E-05)*TT,data12[2]/(data12[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",type="l",col="black",cex=1,tcl=1,cex.lab=2,cex.axis=2,cex.main=2)
legend("topright", col=c("green3","red","black"), legend=c("88.2mA(#5)","1140mA(#11)","1352mA(#12)"),pch=c(1,1),cex=2,pt.cex = 2)
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/
