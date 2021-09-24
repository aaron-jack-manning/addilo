leakyrelu.derivative <-
function(x) { return(ifelse(x > 0, 1, 0.1)) }
