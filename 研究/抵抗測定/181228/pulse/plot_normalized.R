png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(-1,9)
YLIM<-c(-1,1)
TT<-3/(6.03899E-05-2.52597E-05)
data3_2 <- read.csv("181228_SnGe6_1_3-2.csv",skip=9)
plot(data.frame((data3_2[1]-2.52597E-05)*TT,data3_2[2]/(data3_2[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
data1_2 <- read.csv("181228_SnGe6_1_1-2.csv",skip=9)
plot(data.frame((data1_2[1]-2.12267E-05)*TT,data1_2[2]/(data1_2[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green",cex=0.1)
par(new=TRUE) #
data1_5 <- read.csv("181228_SnGe6_1_1-5.csv",skip=9)
plot(data.frame((data1_5[1]-2.12267E-05)*TT,data1_5[2]/(data1_5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data1_10 <- read.csv("181228_SnGe6_1_1-10.csv",skip=9)
plot(data.frame((data1_10[1]-2.12267E-05)*TT,data1_10[2]/(data1_10[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data1_13 <- read.csv("181228_SnGe6_1_1-13.csv",skip=9)
plot(data.frame((data1_13[1]-6.83093E-06)*TT,-(data1_13[2])/(data1_13[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data1_14 <- read.csv("181228_SnGe6_1_1-14.csv",skip=9)
plot(data.frame((data1_14[1]-8.10449E-07)*TT,-(data1_14[2]+0.0242686272)/((data1_14[3]-0.3526461124)/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1)
par(new=TRUE) #
legend("topright", col=c("blue","green","gold","violet","red","black"), legend=c("3.78mA(#2)","88.2mA(#5)","450mA(#8)","919mA(#10)","1140mA(#11)","1352mA(#12)"),pch=c(1,1))

dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/
