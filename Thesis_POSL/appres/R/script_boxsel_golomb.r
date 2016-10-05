script_boxsel_golomb <- function(data, file_name, y_max, mean_sec, mean_par, col_par_box, col_comm_box){

dev=pdf(file_name, height=14, width=10)
par(cex.axis=2)
par(mar=c(8,6,1,1)+.1)
p_ylim=c(0,y_max);

col_boxes = c("white", col_par_box, "white" , col_comm_box)

lablist.y<-as.vector(c("Sequential (no tabu)", "Sequential (tabu)", "Parallel (tabu)", "Parallel (no tabu)"))
boxplot(data, las = 2, names = c("", "", "", ""), cex = 2, ylim=p_ylim, col=col_boxes)

labels1<-as.vector(c("Sequential", "Sequential", "Parallel", "Parallel"))
labels2<-as.vector(c("(no tabu)", "(tabu)", "(no tabu)", "(tabu)"))

mtext(at = c(1:4), labels1, side=1, line=2, cex=2)
mtext(at = c(1:4), labels2, side=1, line=3.5, cex=2)

x <- c(0:5)
lines(x, rep.int(mean_sec, 6), col="red", lwd=3, lty=2)
lines(x, rep.int(mean_par, 6), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Sequential using tabu mean", "Parallel using tabu mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=1.8)

mtext("Solver strategy", side=1, line=6, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()
}
