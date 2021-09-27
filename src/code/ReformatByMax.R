ReformatByMax <-
function(results)
{
	results.reformatted <- matrix(0, ncol = ncol(results), nrow = nrow(results))
	for (i in 1:ncol(results))
	{
		results.reformatted[which(results[,i] == max(results[,i])),i] <- 1
	}
	
	return(results.reformatted)
}
