# Parse arguments
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("Please supply an input file.\n", call.=FALSE)
} 
csv = args[1]

N = 100

# Generate data
e = rnorm(N)
x = runif(N)
y = 100 + (13*x) + e

df = data.frame(x=x,y=y)

# Write to disk
write.csv(df, csv)
