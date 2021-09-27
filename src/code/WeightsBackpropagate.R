WeightsBackpropagate <-
function(delta, structure, activations)
{
	delta.weights <- as.list(rep(NA, times = (length(structure) - 1)))
	
	for (i in 1:(length(structure) - 1))
	{
		delta.weights[[i]] <- delta[[i]] %*% t(activations[[i]])
	}
	
	return(delta.weights)
}
