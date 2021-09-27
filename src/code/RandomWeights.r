RandomWeights <-
function(left.layer.length, right.layer.length)
{
	return(matrix(
		rnorm(left.layer.length * right.layer.length, mean = 0, sd = sqrt(2/(left.layer.length + right.layer.length))),
		nrow = right.layer.length,
		ncol = left.layer.length
    ))
}