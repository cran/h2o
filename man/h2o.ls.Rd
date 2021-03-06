% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kvstore.R
\name{h2o.ls}
\alias{h2o.ls}
\title{List Keys on an H2O Cluster}
\usage{
h2o.ls()
}
\value{
Returns a list of hex keys in the current H2O instance.
}
\description{
Accesses a list of object keys in the running instance of H2O.
}
\examples{
\dontrun{
library(h2o)
h2o.init()
prostate_path <- system.file("extdata", "prostate.csv", package = "h2o")
prostate <- h2o.uploadFile(path = prostate_path)
h2o.ls()
}
}
