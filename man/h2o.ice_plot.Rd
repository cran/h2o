% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explain.R
\name{h2o.ice_plot}
\alias{h2o.ice_plot}
\title{Plot Individual Conditional Expectation (ICE) for each decile}
\usage{
h2o.ice_plot(model, newdata, column, target = NULL, max_levels = 30)
}
\arguments{
\item{model}{An H2OModel.}

\item{newdata}{An H2OFrame.}

\item{column}{A feature column name to inspect.}

\item{target}{If multinomial, plot PDP just for \code{target} category.  Character string.}

\item{max_levels}{An integer specifying the maximum number of factor levels to show.
Defaults to 30.}
}
\value{
A ggplot2 object
}
\description{
Individual Conditional Expectation (ICE) plot gives a graphical depiction of the marginal 
effect of a variable on the response. ICE plots are similar to partial dependence plots (PDP); 
PDP shows the average effect of a feature while ICE plot shows the effect for a single 
instance. This function will plot the effect for each decile. In contrast to the PDP, 
ICE plots can provide more insight, especially when there is stronger feature interaction.
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

# Create the individual conditional expectations plot
ice <- h2o.ice_plot(gbm, test, column = "alcohol")
print(ice)
}
}
