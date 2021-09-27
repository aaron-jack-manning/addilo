BiasesBackpropagate <-
function(delta, structure)
{
	delta.biases <- as.list(rep(NA, times = length(structure)))
	
	for (i in 2:(length(structure)))
	{
		delta.biases[[i]] <- delta[[i - 1]]
	}
	
	return(delta.biases)
}
