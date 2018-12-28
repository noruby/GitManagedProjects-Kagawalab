png("Resistance_pulse.png", width = 600, height = 500)  # 描画デバイスを開く

XLIM<-c(0,10)
YLIM<-c(5,50)
TT<-3/(6.03899E-05-2.52597E-05)
data <- read.csv("181227_BaTiO_AS_1-14.csv",skip=9)
data[2]*TT
plot(data.frame((data[1]-1.52832E-05)*TT,data[2]/(-data[3]/5.4)),xlim=XLIM,ylim=YLIM,log="y",xlab="Time(s)",ylab="Resistance(Ohm)",type="l",col="blue",cex=0.1)
par(new=TRUE) #

legend("topleft", col=c("blue"), legend=c("11V"),pch=c(1,1))

dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/
