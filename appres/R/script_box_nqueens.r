script_box_nqueens <- function(data, file_name, mean_seq, mean_par, mean_com, y_min, y_max, col_seq_box, col_par_box, col_pc11, col_pc1n){

dev=pdf(file_name, height=14, width=9)
par(cex.axis=2)
par(mar=c(13,6,1,1)+.1)
p_ylim=c(y_min,y_max);


col_boxes = c(col_seq_box, col_par_box,col_pc11, col_pc1n,rep.int("white",4))

boxplot(data, las = 2, names = c("Seq", "NC","Cyc1-1","Cyc1-n","S1-1","S1-n","S1-n/2","S1-n/4"), 
		  cex = 2, ylim=p_ylim, col=col_boxes)

x <- c(0:9)
lines(x, rep.int(mean_seq, 10), col="darkred", lwd=3, lty=2)
lines(x, rep.int(mean_par, 10), col="red", lwd=3, lty=2)
lines(x, rep.int(mean_com, 10), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Sequential mean", "Parallel (no communication) mean", "Cyclic communication mean"), 
			lty=2, lwd=4,
			col=c("darkred", "red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA, NA),
			cex=2)

mtext("Communication strategy", side=1, line=10, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()
}
