\name{SaveNetwork}
\title{
SaveNetwork
}
\alias{SaveNetwork}
\description{
Saves the neural network to the specified file path.
}
\usage{
SaveNetwork(network, file.path = "neuralnetwork.Rds")
}
\arguments{
\item{network}{
list, neural network in standard format as output by the Train function.
}
\item{file.path}{
string, the file to save the network to.
}
}
\details{
This function is to be used together with the RecallNetwork function to allow well performing networks to be saved and reused.

The file path specified must save the file in the .Rds format.

The default value for the file.path will store a file called neuralnetwork.Rds in the current R working directory. This directory can be found by running getwd().
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# SaveNetwork(network, file.path = "neuralnetwork.Rds")
}