png("Resistance_pulse2.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-1,7)
YLIM<-c(0,1.2)
TT<-3/(6.03899E-05-2.52597E-05)
data1_2 <- read.csv("181228_SnGe6_1_1-2.csv",skip=9)
plot(data.frame((data1_2[1]-5.86997E-05)*TT,-(data1_2[2]+0.0013661385)/((data1_2[3]-0.0067640649)/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="green",cex=0.1)
par(new=TRUE) #
data1_5 <- read.csv("181228_SnGe6_1_1-5.csv",skip=9)
plot(data.frame((data1_5[1]-2.1419E-05)*TT,-(data1_5[2]-4.80413E-04)/((data1_5[3]+0.0049948692)/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data1_10 <- read.csv("181228_SnGe6_1_1-10.csv",skip=9)
plot(data.frame((data1_10[1]-2.28083E-05)*TT,-(data1_10[2]+1.28899E-04)/((data1_10[3]-8.74539E-04)/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data1_13 <- read.csv("181228_SnGe6_1_1-13.csv",skip=9)
#plot(data.frame((data1_13[1]-1.88719E-05)*TT,-(data1_13[2]+0.0188660622)/((data1_13[3]-0.3374373913)/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
plot(data.frame((data1_13[1]-1.88719E-05)*TT,-(data1_13[2]+0.0188660622)/((data1_13[3]-0.3374373913)/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1)
par(new=TRUE) #
data1_14 <- read.csv("181228_SnGe6_1_1-14.csv",skip=9)
plot(data.frame((data1_14[1]-8.10449E-07)*TT,-(data1_14[2]+0.0243258476)/((data1_14[3]-0.3508520126)/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1)
par(new=TRUE) #
data3_2 <- read.csv("181228_SnGe6_1_3-2.csv",skip=9)
plot(data.frame((data3_2[1]-1.00033E-04)*TT,-(data3_2[2]+0.0016403198)/((data3_2[3]-0.3938102722)/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
legend("bottomleft", col=c("green","gold","violet","red","black","blue"), legend=c("4.07mA(#2)","244mA(#5)","1007mA(#10)","1106mA(#13)","1207mA(#14)","44.4mA(after-pulse)"),pch=c(1,1))
dev.off()  

png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-2,10)
YLIM<-c(0.001,1.2)
TT<-3/(6.03899E-05-2.52597E-05)
data1_2 <- read.csv("181228_SnGe6_1_1-2.csv",skip=9)
plot(data.frame((data1_2[1]-5.86997E-05)*TT,-data1_2[2]/(data1_2[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="green",cex=0.1)
par(new=TRUE) #
data1_5 <- read.csv("181228_SnGe6_1_1-5.csv",skip=9)
plot(data.frame((data1_5[1]-2.1419E-05)*TT,-data1_5[2]/(data1_5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data1_10 <- read.csv("181228_SnGe6_1_1-10.csv",skip=9)
plot(data.frame((data1_10[1]-2.28083E-05)*TT,-data1_10[2]/(data1_10[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data1_13 <- read.csv("181228_SnGe6_1_1-13.csv",skip=9)
plot(data.frame((data1_13[1]-1.88719E-05)*TT,-data1_13[2]/(data1_13[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="red",cex=0.1)
par(new=TRUE) #
data1_14 <- read.csv("181228_SnGe6_1_1-14.csv",skip=9)
plot(data.frame((data1_14[1]-1.67879E-05)*TT,-data1_14[2]/(data1_14[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",log="y",type="l",col="black",cex=0.1)
par(new=TRUE) #
data3_2 <- read.csv("181228_SnGe6_1_3-2.csv",skip=9)
plot(data.frame((data3_2[1]-1.00033E-04)*TT,-data3_2[2]/(data3_2[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
legend("bottomright", col=c("green","gold","violet","red","black","blue"), legend=c("4.07mA(#2)","244mA(#5)","1007mA(#10)","1106mA(#13)","1207mA(#14)","44.4mA(after-pulse)"),pch=c(1,1))
dev.off()  

png("Resistance_pulse_selected.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-2,10)
YLIM<-c(0,0.5)
TT<-3/(6.03899E-05-2.52597E-05)
data1_13 <- read.csv("181228_SnGe6_1_1-13.csv",skip=9)
plot(data.frame((data1_13[1]-1.88719E-05)*TT,-data1_13[2]/(data1_13[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
data1_14 <- read.csv("181228_SnGe6_1_1-14.csv",skip=9)
plot(data.frame((data1_14[1]-1.67879E-05)*TT,-data1_14[2]/(data1_14[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topright", col=c("red","black"), legend=c("1106mA(#13)","1207mA(#14)"),pch=c(1,1))
dev.off()  

png("current_pulse.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-2,10)
YLIM<-c(0.0001,1)
TT<-3/(6.03899E-05-2.52597E-05)
data1_2 <- read.csv("181228_SnGe6_1_1-2.csv",skip=9)
plot(data.frame((data1_2[1]-5.86997E-05)*TT,abs(data1_2[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="green",cex=0.1)
par(new=TRUE) #
data1_5 <- read.csv("181228_SnGe6_1_1-5.csv",skip=9)
plot(data.frame((data1_5[1]-2.1419E-05)*TT,abs(data1_5[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="gold",cex=0.1)
par(new=TRUE) #
data1_10 <- read.csv("181228_SnGe6_1_1-10.csv",skip=9)
plot(data.frame((data1_10[1]-2.28083E-05)*TT,abs(data1_10[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="violet",cex=0.1)
par(new=TRUE) #
data1_13 <- read.csv("181228_SnGe6_1_1-13.csv",skip=9)
plot(data.frame((data1_13[1]-1.88719E-05)*TT,abs(data1_13[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="y",type="l",col="red",cex=0.1)
par(new=TRUE) #
data1_14 <- read.csv("181228_SnGe6_1_1-14.csv",skip=9)
plot(data.frame((data1_14[1]-1.67879E-05)*TT,abs(data1_14[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",log="y",type="l",col="black",cex=0.1)
par(new=TRUE) #
data3_2 <- read.csv("181228_SnGe6_1_3-2.csv",skip=9)
plot(data.frame((data3_2[1]-1.00033E-04)*TT,abs(data3_2[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="",ylab="",type="l",col="blue",cex=0.1)
par(new=TRUE) #
legend("topright", col=c("green","gold","violet","red","black","blue"), legend=c("4.07mA(#2)","244mA(#5)","1007mA(#10)","1106mA(#13)","1207mA(#14)","44.4mA(after-pulse)"),pch=c(1,1))
dev.off()  

png("current_pulse_selected.png", width = 600, height = 500)  # 描画デバイスを開く
XLIM<-c(-2,10)
YLIM<-c(0,1.5)
TT<-3/(6.03899E-05-2.52597E-05)
data1_13 <- read.csv("181228_SnGe6_1_1-13.csv",skip=9)
plot(data.frame((data1_13[1]-1.88719E-05)*TT,abs(data1_13[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="",ylab="",type="l",col="red",cex=0.1,tcl=0.5)
par(new=TRUE) #
data1_14 <- read.csv("181228_SnGe6_1_1-14.csv",skip=9)
plot(data.frame((data1_14[1]-1.67879E-05)*TT,abs(data1_14[3]/5.4)),xlim=XLIM,ylim=YLIM,xlab="Time(s)",ylab="Current(A)",type="l",col="black",cex=0.1,tcl=0.5)
par(new=TRUE) #
legend("topright", col=c("red","black"), legend=c("1106mA(#13)","1207mA(#14)"),pch=c(1,1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/
