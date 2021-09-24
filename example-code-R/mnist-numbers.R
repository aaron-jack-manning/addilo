library('addilo')
# Section 1: Loading in the data and training the algorithm
input.data.set <- DataSetReader(1, 60000, "numberstraininput.csv", normalise = TRUE)
expected.output.data.set <- DataSetReader(1, 60000, "numberstrainoutput.csv")
input.testing <- DataSetReader(1, 10000, "numberstestinput.csv", normalise = TRUE)
expected.output.testing <- DataSetReader(1, 10000, "numberstestoutput.csv")

network <- NetworkGenerator(c(784, 20, 20, 10), swish, swish.derivative)
network <- Train(network, input.data.set, expected.output.data.set, epochs = 3, batch.size = 1, track.progress = TRUE, track.frequency = "epoch")

# Section 2: Testing the network against the entire testing set
results <- Test(network, input.testing)
correct.counter <- IdenticalColumnCheck(expected.output.testing, ReformatByMax(results))
print(as.data.frame(table(correct.counter)))

# Section 3: Examining specific images
image.number <- 1 # change this number to pick which element of the training set to examine
image.matrix <- input.testing[,image.number]

cat("The image is a ", which(results[,image.number] == max(results[,image.number])) - 1, "\n", sep = "")

options(warn=-1)
library(imager)
plot(image.matrix %>% as.cimg)
options(warn=0)
