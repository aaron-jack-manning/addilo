\name{DataSetReader}
\title{
DataSetReader
}
\alias{DataSetReader}
\description{
Reads and converts .csv file of data into matrix.
}
\usage{
DataSetReader(first.input.column = 1, last.input.column, file.path, normalise = FALSE)
}
\arguments{
  \item{first.input.column}{
numeric, the first column of the .csv that is to be read.
}
\item{last.input.column}{
numeric, the last column of the .csv that is to be read.
}
\item{file.path}{
string, the file path for the .csv.
}
\item{normalise}{
logical, determines if the input is to be normalised between 0 and 1.
}
}
\details{
The required format for the initial .csv is that it is rectangular, with each column representing a specific input and each row representing a corresponding neuron in the input layer, and only contains numeric elements. The first and last column are included in the data set.
}
\value{
Returns a matrix of numeric elements in the same arrangement as the original .csv file.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# input.training <- DataSetReader(1, 50, file.path = "dataset.csv", normalise = TRUE)
}