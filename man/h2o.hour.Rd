% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.hour}
\alias{h2o.hour}
\alias{hour}
\alias{hour.H2OFrame}
\title{Convert Milliseconds to Hour of Day in H2O Datasets}
\usage{
h2o.hour(x)

hour(x)

\method{hour}{H2OFrame}(x)
}
\arguments{
\item{x}{An H2OFrame object.}
}
\value{
An H2OFrame object containing the entries of \code{x} converted to hours of
        the day.
}
\description{
Converts the entries of an H2OFrame object from milliseconds to hours of the day
(on a 0 to 23 scale).
}
\examples{
\dontrun{
library(h2o)
h2o.init()

f <- "https://s3.amazonaws.com/h2o-public-test-data/smalldata/jira/v-11-eurodate.csv"
hdf <- h2o.importFile(f)
h2o.hour(hdf["ds9"])
}
}
\seealso{
\code{\link{h2o.day}}
}
