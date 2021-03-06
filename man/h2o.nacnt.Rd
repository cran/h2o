% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.nacnt}
\alias{h2o.nacnt}
\title{Count of NAs per column}
\usage{
h2o.nacnt(x)
}
\arguments{
\item{x}{An H2OFrame object.}
}
\value{
Returns a list containing the count of NAs per column
}
\description{
Gives the count of NAs per column.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

iris_hf <- as.h2o(iris)
h2o.nacnt(iris_hf)  # should return all 0s
h2o.insertMissingValues(iris_hf)
h2o.nacnt(iris_hf)
}
}
