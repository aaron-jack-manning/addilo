\name{ReformatByMax}
\title{
ReformatByMax
}
\alias{ReformatByMax}
\description{
Reformats the output from the Test function such that it is in the form of one 'on' neuron and the rest 'off'.
}
\usage{
ReformatByMax(results)
}
\arguments{
\item{results}{
matrix of numeric elements, as output from the Test function.
}
}
\details{
This function is specifically for use in classification problems, where each neuron corresponds with a classifying group, such that the IdenticalColumnCounter function can be used for direct comparison.
}
\value{
Returns a matrix of numeric elements where each column contains one '1' value and the rest are '0'.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# result.reformatted <- ReformatByMax(results)
}