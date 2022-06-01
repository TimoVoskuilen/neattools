#' subset a dataframe
#'
#' @param data A dataframe
#'
#' @return a subsetted dataframe based on what row u want to subset
#' @export
#'
#' @examples
#' subset(layout, 8)

subset <- function(data, what){

  data2 <- data[c(what),]
  data2

}


