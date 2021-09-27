\name{Test}
\title{
Test
}
\alias{Test}
\description{
Tests the network by feeding forward the entire input data set.
}
\usage{
Test(network, input)
}
\arguments{
  \item{network}{
list, neural network in standard format as output by the Train function.
}
\item{input}{
matrix of numeric elements, input data set in standard format as read by DataSetReader.
}
}
\value{
Returns a matrix of numeric elements where each column corresponds to an input and each row corresponds to a neuron.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# results <- Test(network, input = input.testing)
}