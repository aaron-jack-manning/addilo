PolynomialPredictor <-
function(coefficients, independent.variable)
{
    prediction <- 0
    
    for (i in 1:length(coefficients))
    {
        prediction <- prediction + coefficients[i] * independent.variable^i
    }
    
    return(prediction)
}
