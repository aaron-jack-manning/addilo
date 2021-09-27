DeltaBackpropagation <-
function(n, activations, expected.output, weights, biases, derivative.function, structure)
{
	Delta <- function(n)
	{
		if (n == length(structure) - 1)
		{
			return((2 * (activations[[n + 1]] - expected.output)) * derivative.function(weights[[n]] %*% activations[[n]] + biases[[n + 1]]))
		}
		else
		{
			return((t(weights[[n + 1]]) %*% Delta(n + 1) * derivative.function(weights[[n]] %*% activations[[n]] + biases[[n + 1]])))
		}
	}
	
	delta <- as.list(rep(NA, times = (length(structure) - 1)))
	
	for (i in 1:(length(structure) - 1))
	{
		delta[[i]] <- Delta(i)
	}
	
	return(delta)
}
