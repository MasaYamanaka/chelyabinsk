#' @title Read CASTEML file and return a dataframe
#'
#' @description Read CASTEML file and return a dataframe.
#'
#' @details This function converts a CASTEML file to a csvfile by
#'   `cbk.convert.casteml()' and read it by `cbk.read.dataframe()'.
#'   When `download' option was specified, this directly reads stones
#'   from Medusa.
#' @param pmlfile_or_stone A CASTEML file that exits locally or
#'   stone-ID (when download=TRUE)
#' @param tableunit Output unit that will be resolved by
#'   cbk.convector() (default="none")
#' @param category category to pass to `cbk.convert.casteml'
#' @param download flag to directory download from Medusa
#'   (default=FALSE)
#' @return A dataframe with unit organized
#' @seealso \code{\link{cbk.convert.casteml}},
#'   \code{\link{cbk.read.dataframe}},
#'   \url{https://github.com/misasa/casteml}
#' @export
#' @examples
#' pmlfile <- cbk.path("20081202172326.hkitagawa.pml")
#' pmlame  <- cbk.read.casteml(pmlfile,tableunit="ppm",category="trace")
#'
#' pmlame  <- cbk.read.casteml("20081202172326.hkitagawa",tableunit="ppm",category="trace",download=TRUE)
cbk.read.casteml <- function(pmlfile_or_stone,tableunit="none",category=NULL,download=FALSE){
  if (download) { # stone-ID is provided
    pmlfile <- cbk.download.casteml(pmlfile_or_stone)
  } else { # pmlfile is provided
    pmlfile <- pmlfile_or_stone
  }
  pmlcsv  <- cbk.convert.casteml(pmlfile,category=category)
  pmlame  <- cbk.read.dataframe(pmlcsv,tableunit)
  return(pmlame)
}
