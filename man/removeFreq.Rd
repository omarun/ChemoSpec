% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/removeFreq.R
\name{removeFreq}
\alias{removeFreq}
\title{Remove Frequencies from a Spectra Object}
\usage{
removeFreq(spectra, rem.freq)
}
\arguments{
\item{spectra}{An object of S3 class \code{\link{Spectra}} from which to
remove selected frequencies.}

\item{rem.freq}{A valid R statement describing the frequencies to be
removed.  This must comply with \code{\link{Comparison}} and
\code{\link{Logic}}.  See the examples below for common usage.}
}
\value{
An object of S3 class \code{\link{Spectra}}.
}
\description{
This function removes specified frequencies from a \code{\link{Spectra}}
object.  For instance, one might want to remove regions lacking any useful
information (to reduce the data size), or remove regions with large
interfering peaks (e.g. the water peak in 1H NMR).
}
\details{
\code{rem.freq} can be any valid \code{R} statement that leads to a vector of
logicals.  In the examples below, the | and & operators seem backward in
a sense, but R evaluates them one at a time and combines the result to
give the required output.
}
\examples{

data(SrE.IR)
sumSpectra(SrE.IR)

# Remove frequencies from one end:
newIR <- removeFreq(SrE.IR, rem.freq = SrE.IR$freq > 3500)

# Remove frequencies from both ends at once:
newIR <- removeFreq(SrE.IR, rem.freq = SrE.IR$freq > 3500
 | SrE.IR$freq < 800)

# Remove frequencies from the middle:
newIR <- removeFreq(SrE.IR, rem.freq = SrE.IR$freq > 800
  & SrE.IR$freq < 1000)

# The logic of this last one is as follows.  Any values
# that are TRUE will be removed.
values <- 1:7
values > 2
values < 6
values > 2 & values < 6

# After any of these, inspect the results:
sumSpectra(newIR)
check4Gaps(newIR$freq, newIR$data[1,], plot = TRUE)

}
\references{
\url{https://github.com/bryanhanson/ChemoSpec}
}
\author{
Bryan A. Hanson, DePauw University.
}
\keyword{manip}
\keyword{utilities}
