% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{as.h2o}
\alias{as.h2o}
\alias{as.h2o.default}
\alias{as.h2o.H2OFrame}
\alias{as.h2o.data.frame}
\alias{as.h2o.Matrix}
\title{Create H2OFrame}
\usage{
as.h2o(x, destination_frame = "", ...)

\method{as.h2o}{default}(x, destination_frame = "", ...)

\method{as.h2o}{H2OFrame}(x, destination_frame = "", ...)

\method{as.h2o}{data.frame}(x, destination_frame = "", use_datatable = TRUE, ...)

\method{as.h2o}{Matrix}(x, destination_frame = "", use_datatable = TRUE, ...)
}
\arguments{
\item{x}{An \code{R} object.}

\item{destination_frame}{A string with the desired name for the H2OFrame}

\item{\dots}{arguments passed to method arguments.}

\item{use_datatable}{allow usage of data.table}
}
\description{
Import R object to the H2O cluster.
}
\details{
Method \code{as.h2o.data.frame} will use \code{\link[data.table]{fwrite}} if data.table package is installed in required version.

To speedup execution time for large sparse matrices, use h2o datatable.  Make sure you have installed and imported data.table and slam packages.
Turn on h2o datatable by options("h2o.use.data.table"=TRUE)
}
\examples{
\dontrun{
library(h2o)
h2o.init()
iris_hf <- as.h2o(iris)
euro_hf <- as.h2o(euro)
letters_hf <- as.h2o(letters)
state_hf <- as.h2o(state.x77)
iris_hf_2 <- as.h2o(iris_hf)
stopifnot(is.h2o(iris_hf), dim(iris_hf) == dim(iris),
          is.h2o(euro_hf), dim(euro_hf) == c(length(euro), 1L),
          is.h2o(letters_hf), dim(letters_hf) == c(length(letters), 1L),
          is.h2o(state_hf), dim(state_hf) == dim(state.x77),
          is.h2o(iris_hf_2), dim(iris_hf_2) == dim(iris_hf))
if (requireNamespace("Matrix", quietly=TRUE)) {
  data <- rep(0, 100)
  data[(1:10) ^ 2] <- 1:10 * pi
  m <- matrix(data, ncol = 20, byrow = TRUE)
  m <- Matrix::Matrix(m, sparse = TRUE)
  m_hf <- as.h2o(m)
  stopifnot(is.h2o(m_hf), dim(m_hf) == dim(m))
}
}
}
\references{
\url{https://h2o.ai/blog/2016/fast-csv-writing-for-r/}
}
\seealso{
\code{\link{use.package}}
}
