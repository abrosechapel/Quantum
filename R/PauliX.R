#'@title
#'X gate
#´'
#'
#'@import tensor
#'@import dplyr
#'
#'@export
#'@examples
#' # to apply an X gate to the first qubit of a circuit called qc
#'
#' qc$q_1<-PauliX(qc$q_1)
#'



PauliX <- function(a){
  X= matrix(c(0,1,1,0),nrow=2,ncol=2)
  result <-X%*%a
  result

}
