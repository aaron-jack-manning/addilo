\name{RecallNetwork}
\title{
RecallNetwork
}
\alias{RecallNetwork}
\description{
Recalls a neural network from the specified file path.
}
\usage{
RecallNetwork(file.path = "neuralnetwork.Rds")
}
\arguments{
\item{file.path}{
string, the file path where the desired network is saved.
}
}
\details{
This function is to be used together with the SaveNetwork function to allow well performing networks to be saved and reused.

The file path specified must be to an .Rds file. This will be true if used with SaveNetwork.
}
\value{
Returns a list, the neural network as it was when saved.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# network <- RecallNetwork(file.path = "neuralnetwork.Rds")
}