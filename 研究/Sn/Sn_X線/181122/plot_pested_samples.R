png("intensity_pested_samples.png", width = 600, height = 800)  # 描画デバイスを開く

XLIM<-c(10.0,90.0)
YLIM<-c(0,1000)
data1 <- read.table("Sn_cubic_data.int",skip=2)
data2 <- read.table("181122_background.txt",skip=18)
data3 <- read.table("181122_sample3_pested.txt",skip=18)
ddata3<-data3[2]-data2[2]
data4 <- read.table("181122_sample2_pested.txt",skip=18)
ddata4<-data4[2]-data2[2]
split.screen(figs = c(4, 1))
screen(1)
par(mar = c(2, 5, 1, 1),oma = c(1, 1, 1, 1))
plot(data.frame(data1[1],data1[2]),xlim=XLIM,xlab="",ylab="Intensity(%)",type="l",col="red",cex=0.1)
legend("topright", col=c("red"), legend=c("Reference: alpha-Sn"),pch=c(1,1))
par(new=TRUE) 
screen(2)
par(mar = c(2, 5, 1, 1),oma = c(1, 1, 1, 1))
plot(data.frame(data2[1],ddata4),xlim=XLIM,ylim=c(-max(ddata4)/5,max(ddata4)),xlab="",ylab="counts",type="l",col="green",cex=0.1)
legend("topright", col=c("green"), legend=c("Ge0.5% pested (sample2)"),pch=c(1,1))
par(new=TRUE)
screen(3)
par(mar = c(2, 5, 1, 1),oma = c(1, 1, 1, 1))
plot(data.frame(data2[1],ddata3),xlim=XLIM,ylim=c(-max(ddata3)/5,max(ddata3)),xlab="",ylab="counts",type="l",col="gray",cex=0.1)
legend("topright", col=c("gray"), legend=c("Ge0.1% pested (sample3)"),pch=c(1,1))
par(new=TRUE)
screen(4)
par(mar = c(2, 5, 1, 1),oma = c(1, 1, 1, 1))
plot(data.frame(data2[1],data2[2]),xlim=XLIM,xlab="",ylab="counts",type="l",col="orange",cex=0.1)
legend("topright", col=c("orange"), legend=c("Background (CaCO3)"),pch=c(1,1))


dev.off()  

#cd Documents/GitManagedProjects-Kagawalab/研究/抵抗測定/