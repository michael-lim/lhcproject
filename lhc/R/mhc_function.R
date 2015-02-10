#' Median Hill Climbing function
#'
#' This function implements hill climbing algorithm with median ascent
#' @param X,Co This takes in the input of the vector for set of inputs and the randomly generated coefficients
#' @keywords median
#' @export
#' @examples
#' mhc_function(X,Co)

mhc_function <- function(X,Co){
  n = length(X);
  MX = X;
  for(i in 1:n-1){
    Xtemp = X;
    Xtemp[i]=Xtemp[i]+1;
    Xtemp[i+1]=Xtemp[i+1]-1;
    MX = cbind(MX,Xtemp);
  }
  MX = MX[,2:n+1]
  return(MX)
}