\name{RandomizeDataSet}
\title{
RandomizeDataSet
}
\alias{RandomizeDataSet}
\description{
Randomizes the columns (data elements) of a matrix as read by DataSetReader.
}
\usage{
RandomizeDataSet(data.set)
}
\arguments{
\item{data.set}{
matrix of numeric elements, data in standard format as read by DataSetReader.
}
}
\details{
If not read by DataSetReader, the required format for the matrix is where each column represents an input to the network and each row represents a neuron.

For randomizing sets together, make sure the second set of data occupies new rows of the matrix, rather than columns.
}
\value{
Returns a matrix of numeric elements in the same format as given as input.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# input.output.data <- RandomizeDataSet(DataSetReader(1, 50, file.path = "dataset.csv", normalise = TRUE))
}