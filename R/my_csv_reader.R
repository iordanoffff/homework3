#' my_csv_reader
#'
#' @param file_path the path of your file
#' @param sep the separator
#' @param dev the decimal
#'
#' @import assertthat
#'
#' @return reads the csv
#' @export
#'
my_csv_reader <- function(file_path,sep = x,dev = y) {
  assert_that(is.dir(dirname(file_path)))
  assert_that(has_extension(file_path,"csv"))
  read.csv2(file_path,x,y)
}
