RandomizeDataSet <-
function(data.set)
{
	order <- sample(1:ncol(data.set), replace = FALSE)
	
	new.data.set <- matrix(NA, ncol = ncol(data.set), nrow = nrow(data.set))
	
	for (column in 1:ncol(data.set))
	{
		new.data.set[,column] <- data.set[, order[column]]
	}
	
	return(new.data.set)
}
