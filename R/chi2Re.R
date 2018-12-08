#' Il Chiquadro relativo
#'
#' Calcola il valore del chiquadro relativo per una coppia di collezioni
#' di osservazioni.
#'
#' @param valIn1   collezione che contine dati della prima variabile.
#' @param valIn2   collezione che contiene dati della seconda variabile.
#' 
#' @return il chiquadro relativo
#'  
#' @export
#' 
#' @examples
#' \dontrun{
#' testVal1 <-  rep(c(1,2),c(5,5))
#' testVal2 <-  rep(c(1,2),c(5,5))
#' chi2Re(testVal1,testVal2)
#'
#' testVal1 <-   c(1,1,2,2,1,1,2,2)
#' testVal2 <-  c(1,2,1,2,1,2,1,2)
#' chi2Re(testVal1,testVal2)
#' }
#' 
chi2Re <- function(valIn1,valIn2){
    myDF <-data.frame(vY1=valIn1,vY2=valIn2);
    myDF <- myDF[stats::complete.cases(myDF),];
    frequenzeOsservate <- stats::xtabs(~ vY1+vY2,data=myDF)
    enne <- sum(frequenzeOsservate);
    dimensioni <- dim(frequenzeOsservate);
    costanteC <- enne*min(dimensioni[1]-1,dimensioni[2]-1);
    margineUno <- apply(frequenzeOsservate,1,sum);
    margineDue <-  apply(frequenzeOsservate,2,sum);
    atteseSottoIndipendenza <- outer(margineUno,margineDue)/enne;
    chi2 <-sum(((frequenzeOsservate-atteseSottoIndipendenza)^2
                )/ atteseSottoIndipendenza);
    return(c(ChiquadroRelativo= chi2/costanteC));
}
