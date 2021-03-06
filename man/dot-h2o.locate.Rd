% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locate.R
\name{.h2o.locate}
\alias{.h2o.locate}
\title{Locate a file given the pattern <bucket>/<path/to/file>
e.g. h2o:::.h2o.locate("smalldata/iris/iris22.csv") returns the absolute path to iris22.csv}
\usage{
.h2o.locate(pathStub, root.parent = NULL)
}
\arguments{
\item{pathStub}{relative path}

\item{root.parent}{search root directory}
}
\description{
Locate a file given the pattern <bucket>/<path/to/file>
e.g. h2o:::.h2o.locate("smalldata/iris/iris22.csv") returns the absolute path to iris22.csv
}
