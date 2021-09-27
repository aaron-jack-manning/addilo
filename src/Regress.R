Regress <-
function(x, y)
{
    models <- list(
        PolynomialRegression(x, y, 1),
        PolynomialRegression(x, y, 2),
        PolynomialRegression(x, y, 3),
        LogarithmicRegression(x, y),
        ExponentialRegression(x, y)
    )
    
    max.r.2 <- 1
    
    for (i in 2:length(models))
    {
        if (as.numeric(models[[i]][[2]]) > as.numeric(models[[i - 1]][[2]]))
        {
            max.r.2 <- i
        }
    }
    
    return(models[[max.r.2]])
}
