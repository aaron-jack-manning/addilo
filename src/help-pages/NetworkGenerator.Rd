\name{NetworkGenerator}
\title{
NetworkGenerator
}
\alias{NetworkGenerator}
\description{
Generates a multi-layer perceptron neural network in the appropriate format to be used with other functions within this library.
}
\usage{
NetworkGenerator(structure, activation.function, derivative.function, biases.initial.value = 0.1)
}
\arguments{
  \item{structure}{
vector of numeric elements, number of neurons in each layer of the network, with the vector index corresponding to the layer number.
}
\item{activation.function}{
function, a fully vectorised function to be used as the activation function within the network.
}
\item{derivative.function}{
function, a full vectorised function to be used as the derivative of the activation function.
}
\item{biases.initial.value}{
numeric, the initial value for all the biases within the network.
}
}
\details{
The structure of the network must have the same number of neurons in the first layer as there are rows in the data set.

The activation.function and derivative.function paramaters can accept functions included within this library including sigmoid, relu, leakyrelu, tanh, arctan, swish and softplus where the derivative function is in the form functionname.derivative (see specific help pages for more details on these). This format of accepting the function allows users to create and test their own activation functions by inputting the function itself into the NetworkGenerator, that function will then be stored in the network object which can be saved and recalled.

The weight initialisation is performed per weight matrix according to a normal distribution with mean 0 and standard deviation 1 multiplied by the squareroot of 2, divided by the number of neurons in the earlier layer.
}
\value{
Returns a list of each part of the neural network, some of which are themselves a list for each layer/set of that part.
\item{weights}{A list of the weights for each connection, each as a matrix of numeric elements.}
\item{biases}{A list of the biases for each layer, each as a vector of numeric elements.}
\item{activation.function}{The activation function stored in the network.}
\item{derivative.function}{The derivative function stored in the network.}
\item{structure}{A vector of numeric elements, representing the structure of the network as it was given to this function.}
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# network <- NetworkGenerator(c(784, 20, 20, 10), activation.function = sigmoid, derivative.function = sigmoid.derivative, biases.initial.value = 0.1)
}