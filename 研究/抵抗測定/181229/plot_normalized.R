
png("impedance.png", width = 600, height = 500)  # 描画デバイスを開く
par(oma = c(0, 0, 0, 2))
XLIM<-c(5.0,101000.0)
YLIM<-c(0.00,15)
data <- read.csv("181229_BaTiO_impedance_009.csv",header=F)
plot(data.frame(data[3],data[6]),xlim=XLIM,ylim=YLIM,xlab="Frequency (Hz)",ylab="|Impedance| (Ohm)",log="x",type="o",col="red",cex=0.3)
par(new=TRUE)
YLIM<-c(-1,1)
plot(data.frame(data[3],data[7]),xlim=XLIM,ylim=YLIM,xlab="",ylab="",log="x",type="o",col="blue",cex=0.3,axes=FALSE)
mtext("theta(deg)",side = 4, line = 3)  # right y label
axis(4)   
box()
legend("topright", col=c("red","blue"), legend=c("|Impedance|","theta"),pch=c(1,1))
dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/181229