script_boxcom_golomb <- function(data, file_name, mean_par, mean_com, y_max, col_par_box, col_comm_box){

dev=pdf(file_name, height=14, width=21)
par(cex.axis=2)
par(mar=c(10,7,1,1)+.1)
p_ylim=c(0,y_max);

col_boxes = c("white", col_par_box,"white",col_comm_box)

boxplot(data, las = 2, names = c("NC(noT)", "NC(T)","C1-1","C1-n"), cex = 2, ylim=p_ylim, col=col_boxes)

x <- c(0:14)
lines(x, rep.int(mean_par, 15), col="red", lwd=3, lty=2)
lines(x, rep.int(mean_com, 15), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Parallel (no communication) mean", "Communication 1 to N mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Communication strategy", side=1, line=8, cex=2.5)
mtext("Time (seconds)", side=2, line=5, cex=2.5)
dev.off()
}
