script_boxcom_golfers <- function(data, file_name, winner_position, mean_par, mean_com, y_max, col_par_box, col_comm_box){

dev=pdf(file_name, height=14, width=21)
par(cex.axis=2)
par(mar=c(13,6,1,1)+.1)
p_ylim=c(0,y_max);


col_boxes = c(col_par_box,rep.int("white",winner_position-2),col_comm_box,rep.int("white",13-winner_position))

boxplot(data, las = 2, names = c("NC", "100SC1-1","50SC1-1","25SC1-1","100SC1-n","50SC1-n","25SC1-n","CC1-n","CC1-n/2","CC1-n/4","100CC1-1","50CC1-1","25CC1-1"), 
		  cex = 2, ylim=p_ylim, col=col_boxes)

lablist= c("No communication",
			  "100% Simple communication 1 to 1",
           "50% Simple communication 1 to 1",
			  "25% Simple communication 1 to 1",
			  "100% Simple communication 1 to n",
			  "50% Simple communication 1 to n",
			  "25% Simple communication 1 to n",
			  "Cyclic communication 1 to n",
			  "Cyclic communication 1 to n/2",
			  "Cyclic communication 1 to n/4",
			  "100% Cyclic communication 1 to 1",
			  "50% Cyclic communication 1 to 1",
			  "25% Cyclic communication 1 to 1")
x <- c(0:14)
lines(x, rep.int(mean_par, 15), col="red", lwd=3, lty=2)
lines(x, rep.int(mean_com, 15), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Parallel (no communication) mean", lablist[winner_position]), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Communication strategy", side=1, line=10, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()
}