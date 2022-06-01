#' remove a column from a dataframe
#'
#' @param data A dataframe
#'
#' @return a dataframe with a deleted column
#' @export
#'
#' @examples
#'
library(tidyverse)
removecolumn <- function(data, what){
  data2 <- data %>% select(-c(what))
  data2
}


