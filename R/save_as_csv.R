#' save_as_csv
#'
#' @param x a dataframe
#' @param name name of the csv you want to write
#'
#' @import assertthat

#'
#' @return creates a csv file from a dataframe
#' @export
#'
#' @examples save_as_csv(iris,"iris3.csv")

save_as_csv <- function(x,name){
  assert_that(is.data.frame(x))
  assert_that(is.dir(dirname(name)))
  assert_that(has_extension(name,"csv"))
  assert_that(is.writeable(dirname(name)))
  assert_that(not_empty(x))
  write.csv2(x,name)
  return(normalizePath(name))
}

