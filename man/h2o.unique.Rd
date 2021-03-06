% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.unique}
\alias{h2o.unique}
\title{H2O Unique}
\usage{
h2o.unique(x, include_nas = FALSE)
}
\arguments{
\item{x}{An H2OFrame object.}

\item{include_nas}{If set to TRUE, NAs are included. FALSE (turned off) by default.}
}
\value{
Returns an H2OFrame object.
}
\description{
Extract unique values in the column.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

f <- "https://h2o-public-test-data.s3.amazonaws.com/smalldata/iris/iris_wheader.csv"
iris <- h2o.importFile(f)
h2o.unique(iris["class"])
}
}
