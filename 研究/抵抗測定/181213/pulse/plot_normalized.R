png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(-1,9)
YLIM<-c(0,1)
TT<-3/(6.03899E-05-2.52597E-05)
data2 <- read.csv("181213_SnGe6_1-2.csv",skip=9)
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

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/,xlim=XLIM,ylim=YLIM