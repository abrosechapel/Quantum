#'@title
#'Cnot gate
#'
#'@description
#'cnot gate for a circuit of two qubits
#'
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to apply Cnot gate to a circuit called qc
#'
#' Cnot(qc)
#'
#'@export

Cnot<-function(a){

  if (all.equal(as.numeric(unlist(a$q_2)),q0)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q1)==TRUE){
    a[2]<-array(list(c(q1)))

  }
  else if (all.equal(as.numeric(unlist(a$q_2)),q1)==TRUE & all.equal(as.numeric(unlist(a$q_1)),q1)==TRUE){
    a[2]<-array(list(c(q0)))
  }
  result<-a
  result


}
