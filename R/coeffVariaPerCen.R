#' Il coefficiente di variazione percentuale
#'
#' La funzione calcola il valore del coefficiente di
#' variazione percentuale.
#'
#'
#' @param collezione la collezione dei dati da analizzare.
#' @return coefficiente di variazione percentuale
#' @export
#' @examples
#'
#' coeffVariaPerCen(c(3,1,2,3,52,NA,NA,23))
#'
coeffVariaPerCen <- function(collezione){
  colecle <- collezione[!is.na(collezione)]
  100*stats::sd(colecle)/mean(colecle)
}
