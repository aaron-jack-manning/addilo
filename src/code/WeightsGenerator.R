WeightsGenerator <-
function(structure)
{
	weights <- as.list(rep(NA, times = (length(structure) - 1)))
	
	for (i in 1:(length(structure) - 1))
	{
		weights[[i]] <- RandomWeights(structure[i], structure[i + 1])
	}
	
	return(weights)
}
