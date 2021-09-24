library('addilo')
# Section 1: Loading in the data and training the algorithm
input.data.set <- DataSetReader(1, 99, "irisinput.csv", normalise = TRUE)
expected.output.data.set <- DataSetReader(1, 99, "irisoutput.csv")
input.testing <- DataSetReader(100, 149, "irisinput.csv", normalise = TRUE)
expected.output.testing <- DataSetReader(100, 149, "irisoutput.csv")

network <- NetworkGenerator(c(4, 5, 4, 3), swish, swish.derivative)
network <- Train(network, input.data.set, expected.output.data.set, epochs = 100, batch.size = 1, track.progress = TRUE, track.frequency = "epoch")

# Section 2: Testing the network against the entire testing set
results <- Test(network, input.testing)
correct.counter <- IdenticalColumnCheck(expected.output.testing, ReformatByMax(results))
print(as.data.frame(table(correct.counter)))
