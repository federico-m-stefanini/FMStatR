#' La differenza semplice media
#'
#' Calcola il valore della statistica differenza semplice media.
#'
#' @param valoriVaria la collezione che contine dati della  variabile.
#' @return la differenza semplice media
#' @export
#' @examples
#'
#' testVal1 <-   c(1,1,2,2,1,1,2,2)
#' diffeMedSemp(testVal1)
#'
#' testVal2 <-   c(1,1,2,NA,1,1,2,2)
#' diffeMedSemp(testVal2)
#'
#'
diffeMedSemp <- function(valoriVaria){
  valoriX <-  valoriVaria[!is.na(valoriVaria)]
  dimeX <- length(valoriX)
  res <- outer(valoriX,valoriX,function(valUno,valDue)abs(valUno-valDue)	)
  denominatore <- dimeX*(dimeX-1)
return(sum(res)/denominatore )
}
