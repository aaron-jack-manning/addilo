IdenticalColumnCheck <-
function(output, results.reformatted)
{
	correct.counter <- c()
	
	for (i in 1:ncol(results.reformatted))
	{
		correct.counter <- c(correct.counter, all(results.reformatted[,i] == output[,i]))
	}
	
	return(correct.counter)
}
