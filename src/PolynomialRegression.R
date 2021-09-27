PolynomialRegression <-
function(x, y, degree)
{
    vector <- numeric(degree + 1)
    for (element in 1:length(vector))
    {
        vector[element] = sum(x^(element - 1) * y)
    }
    
    matrix <- matrix(0, nrow = degree + 1, ncol = degree + 1)
    for (row in 1:nrow(matrix))
    {
        for (column in 1:ncol(matrix))
        {
            matrix[row, column] = sum(x^(row + column - 2))
        }
    }
    
    coefficients <- solve(matrix) %*% vector
    
    r.squared <- R.Squared(PolynomialPredictor, coefficients, x, y)
    
    labels <- c("Form", "r.squared", unlist(lapply(x = 0:(length(coefficients) - 1), FUN = paste, "a", sep = "")))
    values <- c("y = a0 + a1*x + a2*x^2 + ... + an*x^n", r.squared, coefficients)
    
    names(values) <- labels
    
    return(values)
}
