% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{scale}
\alias{scale}
\alias{scale.H2OFrame}
\title{Scaling and Centering of an H2OFrame}
\usage{
\method{scale}{H2OFrame}(x, center = TRUE, scale = TRUE)
}
\arguments{
\item{x}{An H2OFrame object.}

\item{center}{either a \code{logical} value or numeric vector of length equal to the number of columns of x.}

\item{scale}{either a \code{logical} value or numeric vector of length equal to the number of columns of x.}
}
\description{
Centers and/or scales the columns of an H2O dataset.
}
\examples{
\dontrun{
library(h2o)
h2o.init()
iris_hf <- as.h2o(iris)
summary(iris_hf)

# Scale and center all the numeric columns in iris data set
iris_scaled <- scale(iris_hf[, 1:4])
}
}
