BiasesGenerator <-
function(structure, initial.value = 0.01)
{
	biases <- as.list(rep(NA, times = length(structure)))
	
	for (i in 2:length(structure))
	{
		biases[[i]] <- rep(initial.value, structure[i])
	}
	
	return(biases)
}
