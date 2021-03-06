% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{h2o.aucpr}
\alias{h2o.aucpr}
\alias{h2o.pr_auc}
\title{Retrieve the AUCPR (Area Under Precision Recall Curve)}
\usage{
h2o.aucpr(object, train = FALSE, valid = FALSE, xval = FALSE)

h2o.pr_auc(object, train = FALSE, valid = FALSE, xval = FALSE)
}
\arguments{
\item{object}{An \linkS4class{H2OBinomialMetrics} object.}

\item{train}{Retrieve the training aucpr}

\item{valid}{Retrieve the validation aucpr}

\item{xval}{Retrieve the cross-validation aucpr}
}
\description{
Retrieves the AUCPR value from an \linkS4class{H2OBinomialMetrics}.
If "train", "valid", and "xval" parameters are FALSE (default), then the training AUCPR value is returned. If more
than one parameter is set to TRUE, then a named vector of AUCPRs are returned, where the names are "train", "valid"
or "xval".
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
h2o.aucpr(perf)
}
}
\seealso{
\code{\link{h2o.giniCoef}} for the Gini coefficient,
         \code{\link{h2o.mse}} for MSE, and \code{\link{h2o.metric}} for the
         various threshold metrics. See \code{\link{h2o.performance}} for
         creating H2OModelMetrics objects.
}
