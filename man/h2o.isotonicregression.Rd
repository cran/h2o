% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isotonicregression.R
\name{h2o.isotonicregression}
\alias{h2o.isotonicregression}
\title{Build an Isotonic Regression model}
\usage{
h2o.isotonicregression(
  x,
  y,
  training_frame,
  model_id = NULL,
  validation_frame = NULL,
  weights_column = NULL,
  out_of_bounds = c("NA", "clip"),
  custom_metric_func = NULL,
  nfolds = 0,
  keep_cross_validation_models = TRUE,
  keep_cross_validation_predictions = FALSE,
  keep_cross_validation_fold_assignment = FALSE,
  fold_assignment = c("AUTO", "Random", "Modulo", "Stratified"),
  fold_column = NULL
)
}
\arguments{
\item{x}{(Optional) A vector containing the names or indices of the predictor variables to use in building the model.
If x is missing, then all columns except y are used.}

\item{y}{The name or column index of the response variable in the data. 
The response must be either a numeric or a categorical/factor variable. 
If the response is numeric, then a regression model will be trained, otherwise it will train a classification model.}

\item{training_frame}{Id of the training data frame.}

\item{model_id}{Destination id for this model; auto-generated if not specified.}

\item{validation_frame}{Id of the validation data frame.}

\item{weights_column}{Column with observation weights. Giving some observation a weight of zero is equivalent to excluding it from
the dataset; giving an observation a relative weight of 2 is equivalent to repeating that row twice. Negative
weights are not allowed. Note: Weights are per-row observation weights and do not increase the size of the
data frame. This is typically the number of times a row is repeated, but non-integer values are supported as
well. During training, rows with higher weights matter more, due to the larger loss function pre-factor. If
you set weight = 0 for a row, the returned prediction frame at that row is zero and this is incorrect. To get
an accurate prediction, remove all rows with weight == 0.}

\item{out_of_bounds}{Method of handling values of X predictor that are outside of the bounds seen in training. Must be one of:
"NA", "clip". Defaults to NA.}

\item{custom_metric_func}{Reference to custom evaluation function, format: `language:keyName=funcName`}

\item{nfolds}{Number of folds for K-fold cross-validation (0 to disable or >= 2). Defaults to 0.}

\item{keep_cross_validation_models}{\code{Logical}. Whether to keep the cross-validation models. Defaults to TRUE.}

\item{keep_cross_validation_predictions}{\code{Logical}. Whether to keep the predictions of the cross-validation models. Defaults to FALSE.}

\item{keep_cross_validation_fold_assignment}{\code{Logical}. Whether to keep the cross-validation fold assignment. Defaults to FALSE.}

\item{fold_assignment}{Cross-validation fold assignment scheme, if fold_column is not specified. The 'Stratified' option will
stratify the folds based on the response variable, for classification problems. Must be one of: "AUTO",
"Random", "Modulo", "Stratified". Defaults to AUTO.}

\item{fold_column}{Column with cross-validation fold index assignment per observation.}
}
\value{
Creates a \linkS4class{H2OModel} object of the right type.
}
\description{
Builds an Isotonic Regression model on an H2OFrame with a single feature (univariate regression).
}
\examples{
\dontrun{
library(h2o)
h2o.init()

N <- 100
x <- seq(N)
y <- sample(-50:50, N, replace=TRUE) + 50 * log1p(x)

train <- as.h2o(data.frame(x = x, y = y))
isotonic <- h2o.isotonicregression(x = "x", y = "y", training_frame = train)
}
}
\seealso{
\code{\link{predict.H2OModel}} for prediction
}
