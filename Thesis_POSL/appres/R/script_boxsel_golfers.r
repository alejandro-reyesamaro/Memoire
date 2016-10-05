script_boxsel_golfers <- function(data, file_name, y_max, mean_sec, mean_par, col_par_box, col_comm_box){

dev=pdf(file_name, height=14, width=10)
par(cex.axis=2)
par(mar=c(10,6,1,1)+.1)
p_ylim=c(0,y_max);

col_boxes = c(col_par_box, "white" , col_comm_box)

#lablist.y<-as.vector(c("Sequential", "Parallel best improvement selection", "Parallel first improvement selection"))
labels1 <-as.vector(c("Sequential", "Parallel best", "Parallel first"))
labels2 <-as.vector(c("", "improvement", "improvement"))
labels3 <-as.vector(c("", "selection", "selection"))

boxplot(data, las = 2, names = c("", "", ""), cex = 2, ylim=p_ylim, col=col_boxes)

mtext(at = c(1:3), labels1, side=1, line=2, cex=2)
mtext(at = c(1:3), labels2, side=1, line=3.5, cex=2)
mtext(at = c(1:3), labels3, side=1, line=5, cex=2)

x <- c(0:4)
lines(x, rep.int(mean_sec, 5), col="red", lwd=3, lty=2)
lines(x, rep.int(mean_par, 5), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Sequential mean", "Parallel fisrt improvement mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Solver strategy", side=1, line=7.5, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()
}
