#' FLip the columns and row of a dataframe
#'
#' @param data A dataframe
#'
#' @return a flipped dataframe
#' @export
#'
#' @examples
#' flip(layout)

flip <- function(data){
  data2 <- t(data)
  data2
}

