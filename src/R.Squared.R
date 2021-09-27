R.Squared <-
function(predictor.function, coefficients, x, y)
{
    return(1 - sum((y - predictor.function(coefficients, x))^2)/sum((y - mean(y))^2))
}
