## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(FMStatR)

## ------------------------------------------------------------------------

 testVal1 <-  rep(c(1,2),c(5,5))
 testVal2 <-  rep(c(1,2),c(5,5))
 table( testVal1,testVal2)
 chi2Re(testVal1,testVal2)

 testVal1 <-   c(1,1,2,2,1,1,2,2)
 testVal2 <-  c(1,2,1,2,1,2,1,2)
 table( testVal1,testVal2)
 chi2Re(testVal1,testVal2)

## ------------------------------------------------------------------------
testVal1 <-   c(1,1,2,2,1,1,2,2)
diffeMedSemp(testVal1)

testVal2 <-   c(1,1,2,NA,1,1,2,2)
diffeMedSemp(testVal2)

## ------------------------------------------------------------------------
testVal3 <-   c(1,1,2,2,1,1,2,2,17,17,17,17,17,17)
valoriModali(testVal3)

testVal4 <-   c(11,11,12,NA,11,11,12,12,12,13,14,16,15)
valoriModali(testVal4)

## ------------------------------------------------------------------------
coeffVariaPerCen(c(3,1,2,3,52,NA,NA,23))

