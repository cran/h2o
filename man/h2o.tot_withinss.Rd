% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{h2o.tot_withinss}
\alias{h2o.tot_withinss}
\title{Get the total within cluster sum of squares.}
\usage{
h2o.tot_withinss(object, train = FALSE, valid = FALSE, xval = FALSE)
}
\arguments{
\item{object}{An \linkS4class{H2OClusteringModel} object.}

\item{train}{Retrieve the training total within cluster sum of squares}

\item{valid}{Retrieve the validation total within cluster sum of squares}

\item{xval}{Retrieve the cross-validation total within cluster sum of squares}
}
\description{
If "train", "valid", and "xval" parameters are FALSE (default), then the training tot_withinss value is returned. If more
than one parameter is set to TRUE, then a named vector of tot_withinss' are returned, where the names are "train", "valid"
or "xval".
}
\examples{
\dontrun{
library(h2o)
h2o.init()

fr <- h2o.importFile("https://h2o-public-test-data.s3.amazonaws.com/smalldata/iris/iris_train.csv")
predictors <- c("sepal_len", "sepal_wid", "petal_len", "petal_wid")
km <- h2o.kmeans(x = predictors, training_frame = fr, k = 3, nfolds = 3)
h2o.tot_withinss(km, train = TRUE)
}
}
