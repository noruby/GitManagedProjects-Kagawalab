png("TranstionT_Ge1.png", width = 600, height = 700)  # 描画デバイスを開く
Tm <- c(368, 357, 347,354)
T1 <- c(350, 345, 344,354) 
T2 <- c(385, 365, 351,354) 

par(mar=c(12, 4, 4, 2) + 0.1)
# bar chart
b <- barplot(Tm, names.arg=c("arc-high(7-1)", "arc-high(7-2)", "slow-cool(6)", "Reference(water-quench)"), ylim=c(320,390),col=c("white","white","gray","yellow"), xlab = "", ylab = "alpha-to-beta transition temperature (K)",las = 2)

# error bar
arrows(b, T1, b, T2, code = 3, lwd = 1, angle = 90, length = 0.1)

dev.off()  