#' Profit function
#'
#' This function generates the profit function for a random set of constants
#' @param X,Co This takes in the input of the vector for set of inputs and the randomly generated coefficients
#' @keywords profit
#' @export
#' @examples
#' profit_function(X,Co)

profit_function <- function(X,Co){
  n <- length(X);
  X2 <- numeric((n*(n+1)/2));
  k=1;
  for(i in 1:n){
    for(j in 1:n){
      if(i >= j){
       X2[k] <- X[i]*X[j];
       k<-k+1;
      }
    }
  }
  XX <- c(X,X2)
  PiX <- XX%*%Co
  return(PiX)
}