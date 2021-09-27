LogarithmicPredictor <-
function(coefficients, independent.variable)
{
    return(coefficients[1] + coefficients[2] * log(independent.variable))
}
