% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cbk.filter.reducer.R
\name{cbk.filter.reducer}
\alias{cbk.filter.reducer}
\title{Convert major-element concentration as oxide to one as metal}
\usage{
cbk.filter.reducer(tbl0)
}
\arguments{
\item{tbl0}{A dataframe with columns of stone and rows of element
abundances}
}
\value{
A dataframe with converted columns
}
\description{
Convert major-element concentration as oxide to one as metal
}
\examples{
pmlfile <- cbk.download.casteml("20081202172326.hkitagawa")
tbl0    <- cbk.read.casteml(pmlfile,"ppm",category=NULL)
tbl1    <- cbk.filter.reducer(tbl0)
}

