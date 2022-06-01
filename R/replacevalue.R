#' replace in a value in a column based on something in another column
#'
#' @param data A dataframe
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
