% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{print.H2OFrame}
\alias{print.H2OFrame}
\title{Print An H2OFrame}
\usage{
\method{print}{H2OFrame}(x, n = 6L, m = 200L, ...)
}
\arguments{
\item{x}{An H2OFrame object}

\item{n}{An (Optional) A single integer. If positive, number of rows in x to return. If negative, all but the n first/last number of rows in x.
Anything bigger than 20 rows will require asking the server (first 20 rows are cached on the client).}

\item{m}{An (Optional) A single integer. If positive, number of columns in x to return. If negative, all but the m first/last number of columns in x.}

\item{...}{Further arguments to be passed from or to other methods.}
}
\description{
Print An H2OFrame
}
\examples{
\dontrun{
library(h2o)
h2o.init()

f <- "https://s3.amazonaws.com/h2o-public-test-data/smalldata/junit/cars_20mpg.csv"
cars <- h2o.importFile(f)
print(cars, n = 8)
}
}
