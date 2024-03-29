% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{h2o.getModelTree}
\alias{h2o.getModelTree}
\title{Fetchces a single tree of a H2O model. This function is intended to be used on Gradient Boosting Machine models or Distributed Random Forest models.}
\usage{
h2o.getModelTree(
  model,
  tree_number,
  tree_class = NA,
  plain_language_rules = "AUTO"
)
}
\arguments{
\item{model}{Model with trees}

\item{tree_number}{Number of the tree in the model to fetch, starting with 1}

\item{tree_class}{Name of the class of the tree (if applicable). This value is ignored for regression and binomial response column, as there is only one tree built.
As there is exactly one class per categorical level, name of tree's class equals to the corresponding categorical level of response column.}

\item{plain_language_rules}{(Optional) Whether to generate plain language rules. AUTO by default, meaning FALSE for big trees and TRUE for small trees.}
}
\value{
Returns an H2OTree object with detailed information about a tree.
}
\description{
Fetchces a single tree of a H2O model. This function is intended to be used on Gradient Boosting Machine models or Distributed Random Forest models.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

f <- "https://h2o-public-test-data.s3.amazonaws.com/smalldata/iris/iris_train.csv"
iris <- h2o.importFile(f)
gbm_model <- h2o.gbm(y = "species", training_frame = iris)
tree <- h2o.getModelTree(gbm_model, 1, "Iris-setosa")
}
}
