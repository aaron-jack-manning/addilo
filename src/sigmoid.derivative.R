sigmoid.derivative <-
function(x) { return(exp(-x)/(1 + exp(-2 *x) + 2 * exp(-x))) }
