% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cbk.download.casteml.R
\name{cbk.download.casteml}
\alias{cbk.download.casteml}
\title{Download analysis records as a CASTEML file}
\usage{
cbk.download.casteml(stone, file = NULL, force = FALSE)
}
\arguments{
\item{stone}{Unique indentification number of stones in Medusa.
Really, those will pass to `casteml download' and thus you can
include options.}

\item{file}{File path to save downloaded CASTEML file}

\item{force}{Force download CASTEML file}
}
\value{
Path to CASTEML file that was downloaded in temporary
  directory.
}
\description{
Download analysis records as a CASTEML file.  This
  function returns path to the file.  The file is stored in a
  temporary directory unless specified.  Note with the same
  arguments, this function downloads only once per a R session.
}
\examples{
stone <- c("20080616170000.hk","20080616170056.hk","20080616170054.hk")
pmlfile <- cbk.download.casteml(stone)

pmlfile <- cbk.download.casteml("20081202172326.hkitagawa")
}
\seealso{
\code{casteml download},
  \url{https://github.com/misasa/casteml},
  \code{\link{cbk.convert.casteml}}
}

