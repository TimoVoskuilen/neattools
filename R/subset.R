#' subset a dataframe
#'
#' @param data A dataframe
#'
#' @return a subsetted dataframe based on what you want to subset
#' @export
#'
#' @examples

subset <- function(data, what){

  data2 <- data[c(what),]
  data2

}


subset(mtcars, "mpg")
