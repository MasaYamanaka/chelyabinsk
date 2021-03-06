#' Return absolute path of files stored in local library
#' @param filename A filename
#' @return An absolute path of files stored in local library
#' @export
#' @examples
#' pmlcsv  <- cbk.path("periodic-table1.dataframe")
#' pmlcsv  <- cbk.path("ref1.dataframe")
#' pmlfile <- cbk.path("20081202172326.hkitagawa.pml")
#' pmlcsv  <- cbk.path("20081202172326.hkitagawa_trace.dataframe")
cbk.path <- function(filename){
  return(system.file("extdata", filename, package = "chelyabinsk"))
}
