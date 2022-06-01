#' Data that shows a made up 384 wells plate layout for mass drug screening
#'
#' Contains the plate layout for a made up drug screening experiment.
#'
#' @format A data frame with 384 rows and 10 variables:
#' \describe{
#'   \item{WellId}{Well identifier}
#'   \item{WellAddress}{Well Adress}
#'   \item{Column}{Column}
#'   \item{Row}{Row}
#'   \item{Drug}{Drug used for screening}
#'   \item{R2ID}{Drug identifier}
#'   \item{Concentration}{Drug concentration}
#'   \item{Cells}{Added cells or not}
#'   \item{Type}{Type of experiment per well}
#'   \item{Control}{Control or not}}
#'
#' @source {created by myself to serve as an example}
#'
#'
#' @examples
#' data(layout)
#'
"layout"
