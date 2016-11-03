script_boxsel_costas <- function(col_par_box, col_comm_box){
sec=c(55.500,177.520,122.810,191.430,87.350,51.950,42.590,243.340,127.080,121.750,296.950,74.560, rep.int(NA, 18))
par=c(49.190,27.590,22.370,27.660,16.220,22.550,2.730,21.000,15.310,31.520,16.940,27.770,20.900,14.310,47.250,34.830,26.210,28.700,59.630,11.790,16.350,15.610,12.200,5.600,19.710,75.710,31.740,25.880,30.440,7.610)
data<-data.frame(sec,par)

dev=pdf("c19_select_BP.pdf", height=14, width=7)
par(cex.axis=2)
par(mar=c(10,6,1,1)+.1)
p_ylim=c(0,300);

col_boxes = c(col_par_box, col_comm_box)

boxplot(data, las = 2, names = c("", ""), cex = 2, ylim=p_ylim, col=col_boxes)

labels1<-as.vector(c("Sequential", "Parallel"))
labels2<-as.vector(c("", "without"))
labels3<-as.vector(c("", "communciation"))

mtext(at = c(1:3), labels1, side=1, line=2, cex=2)
mtext(at = c(1:3), labels2, side=1, line=3.5, cex=2)
mtext(at = c(1:3), labels3, side=1, line=5, cex=2)


x <- c(0:3)
lines(x, rep.int(mean(sec[1:12]), 4), col="red", lwd=3, lty=2)
lines(x, rep.int(mean(par), 4), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Sequential mean", "Parallel mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=1.8)

mtext("Solver strategy", side=1, line=7.5, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()
}
