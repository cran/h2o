% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{h2o.mse}
\alias{h2o.mse}
\title{Retrieves Mean Squared Error Value}
\usage{
h2o.mse(object, train = FALSE, valid = FALSE, xval = FALSE)
}
\arguments{
\item{object}{An \linkS4class{H2OModelMetrics} object of the correct type.}

\item{train}{Retrieve the training MSE}

\item{valid}{Retrieve the validation MSE}

\item{xval}{Retrieve the cross-validation MSE}
}
\description{
Retrieves the mean squared error value from an \linkS4class{H2OModelMetrics}
object.
If "train", "valid", and "xval" parameters are FALSE (default), then the training MSEvalue is returned. If more
than one parameter is set to TRUE, then a named vector of MSEs are returned, where the names are "train", "valid"
or "xval".
}
\details{
This function only supports \linkS4class{H2OBinomialMetrics},
\linkS4class{H2OMultinomialMetrics}, and \linkS4class{H2ORegressionMetrics} objects.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

prostate_path <- system.file("extdata", "prostate.csv", package = "h2o")
prostate <- h2o.uploadFile(prostate_path)

prostate[, 2] <- as.factor(prostate[, 2])
model <- h2o.gbm(x = 3:9, y = 2, training_frame = prostate, distribution = "bernoulli")
perf <- h2o.performance(model, prostate)
h2o.mse(perf)
}
}
\seealso{
\code{\link{h2o.auc}} for AUC, \code{\link{h2o.mse}} for MSE, and
         \code{\link{h2o.metric}} for the various threshold metrics. See
         \code{\link{h2o.performance}} for creating H2OModelMetrics objects.
}
