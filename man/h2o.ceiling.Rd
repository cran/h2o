% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.ceiling}
\alias{h2o.ceiling}
\title{Take a single numeric argument and return a numeric vector with the smallest integers}
\usage{
h2o.ceiling(x)
}
\arguments{
\item{x}{An H2OFrame object.}
}
\description{
ceiling takes a single numeric argument x and returns a
numeric vector containing the smallest integers not less than the
corresponding elements of x.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

f <- "https://h2o-public-test-data.s3.amazonaws.com/smalldata/iris/iris_train.csv"
iris <- h2o.importFile(f)
h2o.ceiling(iris[, 1])
}
}
\seealso{
\code{\link[base]{Round}} for the base R implementation, \code{ceiling()}.
}
