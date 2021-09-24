ExponentialPredictor <-
function(coefficients, independent.variable)
{
    return(coefficients[1] * exp(coefficients[2] * independent.variable))
}
