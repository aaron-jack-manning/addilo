LogarithmicRegression <-
function(x, y)
{
    coefficients <- as.numeric(unlist(PolynomialRegression(log(x), y, 1)[3:4]))
    
    r.squared <- R.Squared(LogarithmicPredictor, coefficients, x, y)
    
    labels <- c("Form", "r.squared", "a", "b")
    values <- c("y = a + b*ln(x)", r.squared, coefficients)
    
    names(values) <- labels
    
    return(values)
}
