ExponentialRegression <-
function(x, y)
{
    transformed.coefficients <- as.numeric(unlist(PolynomialRegression(x, log(y), 1)[3:4]))
    
    coefficients <- c(exp(transformed.coefficients[1]), transformed.coefficients[2])
    
    r.squared <- R.Squared(ExponentialPredictor, coefficients, x, y)
    
    labels <- c("Form", "r.squared", "a", "b")
    values <- c("y = a*e^(b*x)", r.squared, coefficients)
    
    names(values) <- labels
    
    return(values)
}
