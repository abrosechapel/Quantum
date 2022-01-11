#'@title
#'Final state
#'
#'@import tensor
#'@import dplyr
#'
#'
#'@examples
#' # to determinate the state of a circuit without Cnot gate
#' finalstate(qc,1)
#'
#'@export
#'
finalstate<- function(a,b) {
  if (length(a)>1&b==1){
    colstate <-vector(mode="list", length=length(a))
    colstate<-Reduce("%x%",qc[1:length(a)])
    colstate
  }
  else if (b==2){
    b<-a
    colstate <-vector(mode="list", length=length(b))
    colstate <-  as.numeric(unlist(b[1])) %x% as.numeric(unlist(b[2]))
    if(identical(as.list(colstate),as.list(q10))==TRUE|
       identical(as.list(colstate),as.list(q11))==TRUE){
      colstate}
    else if (identical(as.list(colstate),as.list(q10))==FALSE|
             identical(as.list(colstate),as.list(q11))==FALSE) {
      colstate <-  as.numeric(unlist(b[2])) %x% as.numeric(unlist(b[1]))
      colstate<-c(colstate[1],colstate[4],colstate[3],colstate[2])
      colstate

    }

  }
  else if (length(a)==1&b==1){
    colstate<-a[1]
    colstate}

}
