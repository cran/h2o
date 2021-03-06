% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{colnames}
\alias{colnames}
\title{Returns the column names of an H2OFrame}
\usage{
colnames(x, do.NULL = TRUE, prefix = "col")
}
\arguments{
\item{x}{An H2OFrame object.}

\item{do.NULL}{logical. If FALSE and names are NULL, names are created.}

\item{prefix}{for created names.}
}
\description{
Returns the column names of an H2OFrame
}
\examples{
\dontrun{
library(h2o)
h2o.init()

iris_hf <- as.h2o(iris)
colnames(iris_hf)  # Returns "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"
}
}
