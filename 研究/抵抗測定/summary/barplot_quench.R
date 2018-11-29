png("TranstionT_WaterQuench.png", width = 600, height = 500)  # 描画デバイスを開く
Tm <- c(337.5, 338.5, 364, 328.3, 348.6, 354.2)
T1 <- c(336, 337, 362, 328, 345.2, 354.2) 
T2 <- c(338, 341, 367, 328.5, 353.2, 354.2) 

par(mar=c(10, 4, 4, 2) + 0.1)
# bar chart
b <- barplot(Tm, names.arg=c("Ge0.1% (3-1)", "Ge0.1% (3-2)", "Ge0.5% (2)", "Ge0.1% (Reference)", "Ge0.5% (Reference)", "Ge1.0% (Reference)"), ylim=c(320,390),col=c("white","white","gray","yellow","yellow","yellow"), xlab = "", ylab = "alpha-to-beta transition temperature (K)",las = 2)

# error bar
arrows(b, T1, b, T2, code = 3, lwd = 2, angle = 90, length = 0.1)

dev.off()  