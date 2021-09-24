Predictor <-
function(regression.model, independent.variable)
{
    if (regression.model[[1]] == "y = a0 + a1*x + a2*x^2 + ... + an*x^n")
    {
        return(PolynomialPredictor(as.numeric(unlist(regression.model[c(-1, -2)])), independent.variable))
    }
    else if (regression.model[[1]] == "y = a*e^(b*x)")
    {
        return(ExponentialPredictor(as.numeric(unlist(regression.model[c(-1, -2)])), independent.variable))
    }
    else if (regression.model[[1]] == "y = a + b*ln(x)")
    {
        return(LogarithmicPredictor(as.numeric(unlist(regression.model[c(-1, -2)])), independent.variable))
    }
}
