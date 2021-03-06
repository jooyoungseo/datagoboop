% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sonify_qq.R
\name{sonify_qq}
\alias{sonify_qq}
\title{A sonified version of a QQ plot.}
\usage{
sonify_qq(lm_obj, tonic_pkey = 34, show_plot = FALSE)
}
\arguments{
\item{lm_obj}{lm object returned by base R's \code{lm} function}

\item{tonic_pkey}{integer: the piano key of the tonic note used in the sonification. Both sonifications rely on a major scale.}

\item{show_plot}{boolean: whether or not a rudimentary plot of the sonification should also be shown. Default: FALSE.}
}
\value{
A 2 x n matrix representing the sound to be played through each ear. Note that each tone is an observation/quantile, and tones that sound panned to the left are above the \code{y = x} line, and tones that sound panned to the right are below the \code{y = x} line.
}
\description{
short summary
}
\examples{
\dontrun{
# Run a linear regression on the mtcars data set
mod <- lm(mpg ~ 1 + cyl + hp + wt, data = mtcars)

# Play the QQ plot for this model fit
wplay(sonify_qq(mod))
}
}
