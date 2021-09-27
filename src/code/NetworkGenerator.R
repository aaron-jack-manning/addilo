NetworkGenerator <-
function(structure, activation.function, derivative.function, biases.initial.value = 0.1)
{
	return(list(
		weights = WeightsGenerator(structure),
		biases = BiasesGenerator(structure, biases.initial.value),
		activation.function = activation.function,
		derivative.function = derivative.function,
		structure = structure
	))
}
