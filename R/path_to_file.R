#' Get the file path to the raw_mandates.csv, and county_mandates.csv
#'
#' USMaskMandates comes with 2 data sets: raw_mandates and county_mandates located in the `inst/extdata` directory.
#' This funcion allows for easy access.
#'
#' The data in each file is the same as \code{\link{raw_mandates}} and \code{\link{county_mandates}}
#'
#' @param path name of the file in quotes
#'
#' @export
path_to_file <- function(path = NULL){
  if(is.null(path)){
    dir(system.file("extdata", pacakge = "USMaskMandates"))
  }
  else {
    system.file("extdata", path, package = "USMaskMandates", mustWork = TRUE)
  }
}
