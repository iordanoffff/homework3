#' multi_excel_reader_function
#'
#' @param file_path The path of your file
#'
#' @import readxl
#'
#' @return a dataframe
#' @export
#'
multi_excel <- function(file_path) {
  assert_that(is.dir(dirname(file_path)))
  assert_that(not_empty(file_path))
  all_sheets <- excel_sheets(file_path)
  result <- lapply(all_sheets,function(sheet) {read_excel(file_path,sheet = sheet)})
  return(result)
}
