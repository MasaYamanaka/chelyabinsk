#' Read dataframe created from casteml with column "unit"
#' @param dataframefile A flipped csvfile
#' @param tableunit Preferred unit that will be passed to `cbk.convector'
#' @return A dataframe with unit organized
#' @export
cbk.read.dataframe <- function(dataframefile,tableunit){
  ### EXAMPLES
  ### $ casteml download -R 20130528105235-594267 > 20130528105235-594267.pml
  ### $ casteml convert -f dataframe -c trace 20130528105235-594267.pml > 20130528105235-594267.dataframe
  ### R> tbl0 <- cbk.read.dataframe("20130528105235-594267.dataframe","ppm")

  # ----------------
  # unit definition (should be defined as function in the future)
  # ----------------
  ## convector        <- c(1,     1,    100,  100,   100,1000,    1000,  1000000,1000000,1000000000,1000000000,1000000000000)
  ## names(convector) <- c("none","g/g","wt%","cg/g","%","permil","mg/g","ppm",  "ug/g", "ppb",     "ng/g",    "pg/g")

  # ----------------
  # load dataset from csvfile with unit
  # ----------------
  tblin <- read.csv(dataframefile,row.names=1,header=T,stringsAsFactors=F)
  if ('unit' %in% colnames(tblin)) {
    ## factor <- convector[tblin[,'unit']]
    factor <- cbk.convector(tblin[,'unit'])
    names(factor) <- rownames(tblin)
    factor[is.na(factor)] <- 1
    ## tbl0 <- t(tblin[colnames(tblin) != 'unit'] / factor) * convector[tableunit]
    tbl0 <- t(tblin[colnames(tblin) != 'unit'] / factor) * cbk.convector(tableunit)
  } else {
    tbl0 <- t(tblin)
  }
  return(tbl0)
}