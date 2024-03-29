% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explain.R
\name{h2o.residual_analysis_plot}
\alias{h2o.residual_analysis_plot}
\title{Residual Analysis}
\usage{
h2o.residual_analysis_plot(model, newdata)
}
\arguments{
\item{model}{An H2OModel.}

\item{newdata}{An H2OFrame.  Used to calculate residuals.}
}
\value{
A ggplot2 object
}
\description{
Do Residual Analysis and plot the fitted values vs residuals on a test dataset.
Ideally, residuals should be randomly distributed. Patterns in this plot can indicate
potential problems with the model selection, e.g., using simpler model than necessary,
not accounting for heteroscedasticity, autocorrelation, etc.  If you notice "striped"
lines of residuals, that is just an indication that your response variable was integer
valued instead of real valued.
}
\examples{
\dontrun{
library(h2o)
h2o.init()

# Import the wine dataset into H2O:
f <- "https://h2o-public-test-data.s3.amazonaws.com/smalldata/wine/winequality-redwhite-no-BOM.csv"
df <-  h2o.importFile(f)

# Set the response
response <- "quality"

# Split the dataset into a train and test set:
splits <- h2o.splitFrame(df, ratios = 0.8, seed = 1)
train <- splits[[1]]
test <- splits[[2]]

# Build and train the model:
gbm <- h2o.gbm(y = response,
               training_frame = train)

# Create the residual analysis plot
residual_analysis_plot <- h2o.residual_analysis_plot(gbm, test)
print(residual_analysis_plot)
}
}
