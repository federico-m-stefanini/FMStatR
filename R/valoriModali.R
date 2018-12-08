#' La moda e i valori modali
#'
#' Calcola il valore della statistica moda di una variabile. Se
#' presenti pi&ugrave; mode, restituisce tutti i valori modali.
#'
#' @param collezioneValori  collezione che contine dati della  variabile.
#' @return  valori modali
#' @export
#' @examples
#'
#' testVal3 <-   c(1,1,2,2,1,1,2,2,17,17,17,17,17,17)
#' valoriModali(testVal3)
#'
#' testVal4 <-   c(11,11,12,NA,11,11,12,12,12,13,14,16,15)
#' valoriModali(testVal4)
#'
#'
valoriModali <- function(collezioneValori){
  campo1<- data.frame(Mode = collezioneValori)
  distriASSOL   <- stats::xtabs(~ Mode, data=campo1)
  temporaneoDF <- data.frame(distriASSOL)
  resMod <- subset(temporaneoDF, temporaneoDF$Freq == max(temporaneoDF$Freq))
resMod
}
