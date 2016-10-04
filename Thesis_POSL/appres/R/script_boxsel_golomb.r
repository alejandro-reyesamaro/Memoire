script_boxsel_golomb <- function(data, file_name, y_max, mean_sec, mean_par, col_par_box, col_comm_box){

dev=pdf(file_name, height=14, width=21)
par(cex.axis=2)
par(mar=c(10,6,1,1)+.1)
p_ylim=c(0,y_max);

col_boxes = c("white", col_par_box, "white" , col_comm_box)

lablist.y<-as.vector(c("Sequential (no tabu)", "Sequential (tabu)", "Parallel (tabu)", "Parallel (no tabu)"))
boxplot(data, las = 2, names = c("", "", "", ""), cex = 2, ylim=p_ylim, col=col_boxes)

text(x = seq(1, 4, by=1), par("usr")[3] - 0.1, labels = lablist.y, srt = 0, pos = 1, xpd = TRUE, cex=2)

x <- c(0:5)
lines(x, rep.int(mean_sec, 6), col="red", lwd=3, lty=2)
lines(x, rep.int(mean_par, 6), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Sequential using tabu mean", "Parallel using tabu mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Solver strategy", side=1, line=7, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()
}
