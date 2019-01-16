png("TranstionT_bar.png", width = 600, height = 500)  # 描画デバイスを開く
Tm <- c(364, 337.5, 338.5, 347, 354.2, 348.6, 328.3)
T1 <- c(362, 336, 337, 344,  354.2, 345.2, 328) 
T2 <- c(367, 338, 341, 351, 354.2, 353.2, 328.5) 
par(mar=c(10, 4, 4, 2) + 0.1)
# bar chart
b <- barplot(Tm, names.arg=c("Ge0.5% (2)", "Ge0.1% (3-1)", "Ge0.1% (3-2)","Ge1% (6)", "Ge1.0% (Reference)", "Ge0.5% (Reference)", "Ge0.1% (Reference)"), ylim=c(320,390),col=c("white","white","gray", "gray","yellow","yellow","yellow"), xlab = "", ylab = "alpha-to-beta transition temperature (K)",las = 2)
length(b)
length(T1)
length(T2)
# error bar
arrows(b, T1, b, T2, code = 3, lwd = 2, angle = 90, length = 0.1)
dev.off()  

png("TranstionT.png", width = 600, height = 500)  # 描画デバイスを開く
X_q <- c(0.5,0.1,0.1)
T_q <- c(364, 337.5, 338.5)
T1_q <- c(362, 336, 337)
T2_q <- c(367, 338, 341)

X_sc <- c(1)
T_sc <- c(347)
T1_sc <- c(344)
T2_sc <- c(351)

X_ref <- c(1,0.5,0.1)
T_ref <- c(354.2, 348.6, 328.3)
T1_ref <- c(354.2, 345.2, 328) 
T2_ref <- c(354.2, 353.2, 328.5) 
#par(mar=c(10, 4, 4, 2) + 0.1)

XLIM <- c(0.1,1)
YLIM <- c(320, 370)
plot(X_q,T_q,xlab = "Ge-concentration", xlim=XLIM,ylim=YLIM, ylab="alpha-to-beta transition temperature (K)",type="o",col="black",cex=0.5)
arrows(X_q, T1_q,X_q, T2_q, code = 3, lwd = 2, angle = 90, length = 0.1,col="black")
par(new=TRUE) #
plot(X_sc,T_sc,xlim=XLIM,ylim=YLIM, xlab = "", ylab = "",type="o",col="blue",cex=0.5)
arrows(X_sc, T1_sc, X_sc, T2_sc, code = 3, lwd = 2, angle = 90, length = 0.1,col="blue")
par(new=TRUE) #
plot(X_ref,T_ref,xlim=XLIM,ylim=YLIM, xlab = "", ylab = "",type="o",col="red",cex=0.5)
arrows(X_ref, T1_ref, X_ref, T2_ref, code = 3, lwd = 2, angle = 90, length = 0.1,col="red")
par(new=TRUE) #
legend("topright", col=c("black","blue","red"), legend=c("quenched","slow-cooled","quenched (ref.)"),pch=c(1),lty=c(1))
dev.off()  

