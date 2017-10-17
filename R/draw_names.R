#' Draw_names
#'
#' @param x list of the names you want to draw
#' @param the_sex
#'
#' @import ggplot2
#' @import dplyr
#' @import prenoms
#'
#' @return a graph
#' @export
#'
#' @examples draw_names(c("Louis","Paul"))
draw_names <- function(x) {
  data_name <- prenoms
  data_name <- data_name %>% filter(name %in% x) %>% group_by(year,name) %>% summarize(total=sum(n))
  ggplot(data = data_name,
         aes(x=data_name$year, y=data_name$total, color = data_name$name)
  ) +
    geom_line()
}
