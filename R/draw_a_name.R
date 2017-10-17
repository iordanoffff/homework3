#' Draw_a_name
#'
#' @param the_name the name you want to draw
#' @param the_sex
#'
#' @import ggplot2
#' @import dplyr
#' @import assertthat
#' @import prenoms
#'
#' @return a graph
#' @export
#'
#' @examples draw_a_name("Guilhem","M")
draw_a_name <- function(the_name,the_sex) {
  assert_that(not_empty(the_sex))
  data_name <- prenoms
  data_name <- data_name %>% filter(name == the_name, sex == the_sex) %>% group_by(year) %>% summarize(total=sum(n))
  ggplot(data = data_name,
         aes(x=data_name$year, y=data_name$total)
  ) +
    geom_line() +
    ggtitle(the_name)
}

