DataSetReader <-
function(first.input.column = 1, last.input.column, file.path, normalise = FALSE)
{
	data.set <- unname(as.matrix(read.csv(file.path, header = FALSE)))[,first.input.column:last.input.column]
	
	if (NCOL(data.set) == 1)
	{
		data.set <- t(data.set)
	}
	
	if (normalise)
	{
		data.set <- Normalise(data.set)
	}
	
	return(data.set)
}
