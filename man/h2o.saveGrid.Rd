% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/export.R
\name{h2o.saveGrid}
\alias{h2o.saveGrid}
\title{Saves an existing Grid of models into a given folder.}
\usage{
h2o.saveGrid(
  grid_directory,
  grid_id,
  save_params_references = FALSE,
  export_cross_validation_predictions = FALSE
)
}
\arguments{
\item{grid_directory}{A character string containing the path to the folder for the grid to be saved to.}

\item{grid_id}{A chracter string with identification of the grid to be saved.}

\item{save_params_references}{A logical indicating if objects referenced by grid parameters
(e.g. training frame, calibration frame) should also be saved.}

\item{export_cross_validation_predictions}{A logical indicating whether exported model
artifacts should also include CV holdout Frame predictions.}
}
\value{
Returns an object that is a subclass of \linkS4class{H2OGrid}.
}
\description{
Returns a reference to the saved Grid.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

iris <- as.h2o(iris)

ntrees_opts = c(1, 5)
learn_rate_opts = c(0.1, 0.01)
size_of_hyper_space = length(ntrees_opts) * length(learn_rate_opts)

hyper_parameters = list(ntrees = ntrees_opts, learn_rate = learn_rate_opts)
# Tempdir is chosen arbitrarily. May be any valid folder on an H2O-supported filesystem.
baseline_grid <- h2o.grid(algorithm = "gbm", 
                         grid_id = "gbm_grid_test", 
                         x = 1:4, 
                         y = 5, 
                         training_frame = iris,
                         hyper_params = hyper_parameters)

grid_path <- h2o.saveGrid(grid_directory = tempdir(), grid_id = baseline_grid@grid_id)
# Remove everything from the cluster or restart it
h2o.removeAll()
grid <- h2o.loadGrid(grid_path)
}
}
