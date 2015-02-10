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
  for(j in 1:y){
    for(i in 1:n-1){
      Xtemp <- X;
      k <- (i+j) %% n
      if(Xtemp[k+1]>0){
        Xtemp[i]<-Xtemp[i]+1;
        Xtemp[k+1]<-Xtemp[k+1]-1;
        MX <- cbind(MX,Xtemp);
      }
      else{
        Xtemp <- X;
        MX <- cbind(MX,Xtemp);
      }
    }
  }
  MX <- MX[,2:(y*n+1)]
  return(MX)
}