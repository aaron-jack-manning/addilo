swish.derivative <-
function(x) { return((1 + exp(-x) + x * exp(-x)) / (1 + 2 * exp(-x) + exp(-2 * x))) }
