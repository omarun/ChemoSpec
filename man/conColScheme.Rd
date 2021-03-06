% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conColScheme.R
\name{conColScheme}
\alias{conColScheme}
\title{Change the Color Scheme of a Spectra Object}
\usage{
conColScheme(spectra, old = levels(as.factor(spectra$colors)), new = NULL)
}
\arguments{
\item{spectra}{An object of S3 class \code{\link{Spectra}} whose color
scheme is to be changed.}

\item{old}{A character vector of the old color names; will be searched for
and replaced one-for-one by the character vector in \code{new}.}

\item{new}{A character vector of the new (replacement) color schemes.}
}
\value{
An object of S3 class \code{\link{Spectra}} whose color scheme has
been changed.
}
\description{
This function permits you to change the color scheme of an existing
\code{\link{Spectra}} object.
}
\details{
A grepping process is used.  Depending upon the nature of the old color
names to be searched for, you might need to add some grep pattern matching
strings to the color name.
}
\examples{

data(metMUD1)
sumSpectra(metMUD1)
newSpec <- conColScheme(metMUD1, new = c("pink", "violet"))
sumSpectra(newSpec)

}
\references{
\url{https://github.com/bryanhanson/ChemoSpec}
}
\seealso{
For a discussion of general issues of color, see
\code{\link{colorSymbol}}.
}
\author{
Bryan A. Hanson, DePauw University.
}
\keyword{color}
\keyword{utilities}
