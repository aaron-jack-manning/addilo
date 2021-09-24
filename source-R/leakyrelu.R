leakyrelu <-
function(x) { return(ifelse(x > 0, x, 0.1 * x)) }
