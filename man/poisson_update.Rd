% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/poisson.R
\docType{methods}
\name{poisson_update}
\alias{poisson_update}
\title{Update the poisson parameters}
\usage{
poisson_update(datapt, update_params0, update_paramsT, Rlength,
  skippt = FALSE)
}
\arguments{
\item{datapt}{the current data point}

\item{update_params0}{The initialization parameters,
corresponding to predicting a changepoint (run length=0)}

\item{update_paramsT}{The vectors of parameters corresponding
to each possible run length, updated with each incoming data point}

\item{Rlength}{the length of the current vector of possible run
lengths}

\item{skippt}{If the current point should be skipped in the updating
because it was missing, and missPts was set to skip}
}
\value{
The list of the parameters for gaussians corresponding
to each possible runlength up to the current data point.
Lengths of vectors should correspond the length of the
R vector ("run length vector")
}
\description{
Updates the parameters of the poissons based on each possible
run length, after taking into consideration the most recent
data point
}
