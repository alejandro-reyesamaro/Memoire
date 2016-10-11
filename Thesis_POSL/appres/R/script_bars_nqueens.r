script_bars_nqueens <- function(data, file_name){

colors <- c("red","blue","orange")
strs <- c("Cyc1-1","Cyc1-n","S1-1","S1-n","S1-n/2","S1-n/4")
solvers <- c("Receiver","Sender","Pasive receiver")

# Give the chart file a name.
dev=pdf(file_name, height=14, width=10)
par(cex.axis=1.7)
par(cex.lab=2.5)
par(mar=c(8,6,1,1)+.1)

# Create the bar chart.
barplot(data, ylim=c(0,125), names.arg = strs, ylab="Percents", col = colors)

# Add the legend to the chart.
legend("topright", solvers, cex = 2, fill = colors)
mtext("Communication strategy", side=1, line=5, cex=2.5)

# Save the file.
dev.off()
}
