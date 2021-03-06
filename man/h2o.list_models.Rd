% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kvstore.R
\name{h2o.list_models}
\alias{h2o.list_models}
\title{Get an list of all model ids present in the cluster}
\usage{
h2o.list_models()
}
\value{
Returns a vector of model ids.
}
\description{
Get an list of all model ids present in the cluster
}
\examples{
\dontrun{
library(h2o)
h2o.init()

iris_hf <- as.h2o(iris)
model_id <- h2o.gbm(x = 1:4, y = 5, training_frame = iris_hf)@model_id
model_id_list <- h2o.list_models()
}
}
