#' replace in a value in a column based on something in another column
#'
#' @param data A dataframe
#' @param column1 in what column do u want to replace a value
#' @param firstvalue what value do u want to replace
#' @param replacement what do u want to replace this value with
#'
#' @return a dataframe where the values of a specific column have been replaced by the user defined value
#' @export
#'
#' @examples
#' replacevalue(layout, 'Drug', "Analyfyn", "test")

replacevalue <- function(data, column1, firstvalue, replacement){
  data[column1][data[column1] == firstvalue] <- replacement
  data
}
