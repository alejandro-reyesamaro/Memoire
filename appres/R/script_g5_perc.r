# Create the input vectors.
colors <- c("red","blue","orange","black")
strs <- c("100SC1-1","50SC1-1","25SC1-1","100SC1-n","50SC1-n","25SC1-n","CC1-n","CC1-n/2","CC1-n/4","100CC1-1","50CC1-1","25CC1-1")
solvers <- c("Receiver","Sender","Pasive receiver", "Non communicating")

# Create the matrix of the values.
Values <- matrix(c(
13/30*100, 10/30*100, 5/30*100, 15/30*100, 12/30*100,  4/30*100, 25/30*100, 26/30*100, 19/30*100, 20/30*100, 20/30*100, 5/30*100, #receivers
15/30*100, 6/30*100,  1/30*100, 13/30*100,  5/30*100,  1/30*100,         0,  2/30*100, 11/30*100,         0,  3/30*100, 5/30*100, #senders
2/30*100,         0,         0,  2/30*100,         0,         0,  5/30*100,  2/30*100,         0, 10/30*100,         0,        0,
       0, 14/30*100, 24/30*100,         0, 13/30*100, 25/30*100,         0,         0,         0,         0,  7/30*100, 20/30*100), #non communicating
nrow = 4,ncol = 12, byrow = TRUE)

# Give the chart file a name.
dev=pdf("g5_per_BP.pdf", height=14, width=21)
par(cex.axis=1.7)
par(cex.lab=2.5)
par(mar=c(8,6,1,1)+.1)
p_ylim=c(0,100);

# Create the bar chart.
barplot(Values, ylim=c(0,125), names.arg = strs, ylab="Percents", col = colors)

# Add the legend to the chart.
legend("topright", solvers, cex = 2, fill = colors)
mtext("Communication strategy", side=1, line=5, cex=2.5)

# Save the file.
dev.off()

