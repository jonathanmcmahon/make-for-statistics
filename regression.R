# Parse arguments
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("Please supply an input file.\n", call.=FALSE)
} 
csv = args[1]

# Read data
df = read.csv(csv)

# Fit model
model = lm(y ~ x, data=df)

# Print model fit summary 
summary(model)

# Log regression coefficients to file
sink(file="./test.log", append=TRUE)
cat(coef(model), sep=",")
cat("\n")
sink(file=NULL)
