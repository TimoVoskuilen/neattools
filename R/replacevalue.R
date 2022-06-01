#' replace in a value in a column based on something in another column
#'
#' @param data A dataframe
#'
#' @return a dataframe with a deleted column
#' @export
#'
#' @examples
#'

replacevalue <- function(data, column1, data1, value){
  data2 <- data[data$column1 %in% data1, "value"] <- value
  data2
}
replacevalue(mtcars, c("cyl"), 6, c("test"))
