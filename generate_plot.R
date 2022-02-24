# Parse arguments
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("Please supply an input file.\n", call.=FALSE)
} 
csv = args[1]

# Read data
df = read.csv(csv)

# Generate plot
png("plot.png")
plot(df$x, df$y, xlab="x", ylab="y") #, main="The Plot")
