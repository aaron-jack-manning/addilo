Train <-
function(network, input, output, epochs = 1, batch.size = 1, weights.lr = 0.01, biases.lr = 0.1, track.progress = FALSE, track.frequency = "epoch")
{
	activation.function <- network[["activation.function"]]
	derivative.function <- network[["derivative.function"]]
	weights <- network[["weights"]]
	biases <- network[["biases"]]
	structure <- network[["structure"]]
	
	TrainParameterCheck(input, batch.size, track.frequency)
	
	reset.cummulative.changes <- TRUE
	
	if (track.progress)
	{
		cost.per <- c()
		cost.cummulative <- 0
	}
	
	for (epoch.iterator in 1:epochs)
	{
		for (data.set.iterator in 1:ncol(input))
		{
			if (track.progress)
			{
				cat("Epoch", epoch.iterator, "of", epochs, "and data set", data.set.iterator, "of", ncol(input), "\r", sep = " ")
			}
			
			activations <- FeedForward(weights, biases, activation.function, input[,data.set.iterator], structure)
			
			delta <- DeltaBackpropagation(n, activations, output[,data.set.iterator], weights, biases, derivative.function, structure)
			weights.changes <- WeightsBackpropagate(delta, structure, activations)
			biases.changes <- BiasesBackpropagate(delta, structure)
			
			if (reset.cummulative.changes)
			{
				weights.changes.cummulative <- weights.changes
				biases.changes.cummulative <- biases.changes
				reset.cummulative.changes = FALSE
			}
			else
			{
				for (element in 1:(length(structure) - 1))
				{
					weights.changes.cummulative[[element]] <- weights.changes.cummulative[[element]] + weights.changes[[element]]
					biases.changes.cummulative[[element + 1]] <- biases.changes.cummulative[[element + 1]] + biases.changes[[element + 1]]
				}
			}
			
			if (track.progress)
			{
				cost.cummulative <- cost.cummulative + sum((activations[[length(structure)]] - output[,data.set.iterator])^2)
			}
			
			if (data.set.iterator %% batch.size == 0)
			{
				for (i in 1:(length(structure) - 1))
				{
					weights[[i]] <- weights[[i]] - weights.lr * weights.changes.cummulative[[i]]
					biases[[i + 1]] <- biases[[i + 1]] - biases.lr * biases.changes.cummulative[[i + 1]]
				}
				
				reset.cummulative.changes <- TRUE
				
				if (track.progress && track.frequency == "batch")
				{
					cost.per <- c(cost.per, cost.cummulative/batch.size)
					cost.cummulative <- 0
				}
			}
		}
		
		if (track.progress && track.frequency == "epoch")
		{
			cost.per <- c(cost.per, cost.cummulative/ncol(input))
			cost.cummulative <- 0
		}
	}
	
	PlotProgress(track.progress, track.frequency, cost.per)
	
	return(list(weights = weights, biases = biases, activation.function = activation.function, structure = structure))
}
