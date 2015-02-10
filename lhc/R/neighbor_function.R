#' Neighborhood function
#'
#' This function generates all possible neighbors for the vector X, given in a matrix form
#' @param X This takes in the input of the vector for set of inputs, and the mode of connection (1st degree, 2nd degree, etc.)
#' @keywords neighborhood
#' @export
#' @examples
#' neighbor_function(X)

neighbor_function <- function(X,y){
  n <- length(X);
  MX <- X;
  zz <- 0;

  for(j in 1:y){
    for(i in 1:n-1){
      Xtemp <- X;
      if(i+j+1>n){
        zz <- i+j-n+1;
      }
      else{
        zz <- i+j+1;
      }
      z<-i+1;
      if(X[zz]>0&X[z]>0){
        Xtemp[z]<-Xtemp[z]+1;
        Xtemp[zz]<-Xtemp[zz]-1;
        MX <- cbind(MX,Xtemp);
      }
      else{
        Xtemp <- X;
        MX <- cbind(MX,Xtemp);
      }
    }
  }
  MX <- MX[,-1]
  return(MX)
}