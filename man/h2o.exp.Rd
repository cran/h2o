% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.exp}
\alias{h2o.exp}
\title{Compute the exponential function of x}
\usage{
h2o.exp(x)
}
\arguments{
\item{x}{An H2OFrame object.}
}
\description{
Compute the exponential function of x
}
\examples{
\dontrun{
library(h2o)
h2o.init()

frame <- h2o.createFrame(rows = 6, cols = 2,
                         categorical_fraction = 0.0, 
                         missing_fraction = 0.7, 
                         seed = 123)
h2o.exp(frame["C1"])
}
}
\seealso{
\code{\link[base]{Log}} for the base R implementation, \code{exp()}.
}
