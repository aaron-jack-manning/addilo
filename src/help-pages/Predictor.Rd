\name{Predictor}
\title{
Predictor
}
\alias{Predictor}
\description{
Determines the predicted dependent variable from a model and indepedent variable.
}
\usage{
Predictor(regression.model, independent.variable)
}
\arguments{
  \item{regression.model}{
vector of strings, regression.model as output from the Regress function
}
\item{independent.variable}{
numeric, the variable to make the prediction from
}

}
\value{
Returns a numeric value representing the prediction made based on the model.
}
\author{
Aaron Manning
}
\seealso{
[Web link for my documentation]
}
\examples{
# print(Predictor(model, 5))
}