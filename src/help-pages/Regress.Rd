\name{Regress}
\title{
Regress
}
\alias{Regress}
\description{
Creates a regression model based on a bivariate data input, by selecting the most appropriate regression function.
}
\usage{
Regress(x, y)
}
\arguments{
  \item{x}{
vector of numeric elements, the independent variable.
}
\item{y}{
vector of numeric elements, the dependent variable within which to minimise the error.
}
}
\value{
Returns a vector of strings where the first and second elements are the general form of the regression function and the R squared value respectively. All other elements are the coefficients.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# model <- Regress(x, y)
}