#' Remove a column from a dataframe
#'
#' @param data A dataframe
#' @param what what column to remove from a dataframe
#'
#' @return a dataframe with a deleted column
#' @export
#'
#' @examples
#' removecolumn(layout, "Drug")
removecolumn <- function(data, what){
  data2 <- dplyr::select(data, -c(what))
  data2
}

