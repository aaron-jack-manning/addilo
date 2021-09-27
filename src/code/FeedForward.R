FeedForward <-
function(weights, biases, activation.function, input, structure)
{
	activations <- as.list(rep(NA, times = length(structure)))
	
	activations[[1]] <- input
	
	for (i in 2:length(structure))
	{
		activations[[i]] <- activation.function(weights[[i - 1]] %*% activations[[i - 1]] + c(biases[[i]]))
	}
	
	return(activations)
}
