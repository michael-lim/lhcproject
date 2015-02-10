#' Neighborhood function
#'
#' This function generates all possible neighbors for the vector X, given in a matrix form
#' @param X This takes in the input of the vector for set of inputs
#' @keywords neighborhood
#' @export
#' @examples
#' neighbor_function(X)

neighbor_function <- function(X){
  n <- length(X);
  MX <- X;
  for(i in 1:n-1){
    if(Xtemp[i+1]>0){
      Xtemp <- X;
      Xtemp[i]<-Xtemp[i]+1;
      Xtemp[i+1]<-Xtemp[i+1]-1;
      MX <- cbind(MX,Xtemp);
    }
    else{
      Xtemp <- X;
      MX <- cbind(MX,Xtemp);
    }
  }
  MX <- MX[,2:n+1]
  return(MX)
}