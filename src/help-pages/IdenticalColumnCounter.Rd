\name{IdenticalColumnCheck}
\title{
IdenticalColumnCheck
}
\alias{IdenticalColumnCheck}
\description{
Identifies the identical corresponding columns between two matrices.
}
\usage{
IdenticalColumnCheck(output, results.reformatted)
}
\arguments{
\item{output}{
matrix of numeric elements, the expected output for the testing data.
}
\item{results.reformatted}{
matrix of numeric elements, reformatted results as output from the ReformatByMax function.
}
}
\details{
This function allows the number of correct outputs to be determined in classification problems specifically.
}
\value{
Returns a vector of logical elements for which columns were identical.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# correct.vector <- IdenticalColumnCheck(output = output.testing, results.reformatted = results.reformatted)
}