#' Steepest Hill Climbing function
#'
#' This function implements hill climbing algorithm with steepest ascent
#' @param X,Co This takes in the input of the vector for set of inputs and the randomly generated coefficients
#' @keywords steepest
#' @export
#' @examples
#' shc_function(X,Co)

shc_function <- function(X,Co){
  XTemp <- X;
  n <- length(X);
  Norm <- sum(X)+sum(X)^2;
  while(1==1){
    ProfitTemp <- profit_function(XTemp,Co);
    ArrayTemp <- ProfitTemp;
    NeighborTemp <- neighbor_function(XTemp);
    for(x in 2:n){
      NTemp <- NeighborTemp[,(x-1)]
      NProfitTemp <- profit_function(NTemp,Co);
      ArrayTemp <- c(ArrayTemp,NProfitTemp);
    }
    #print(ArrayTemp);
    IndexTemp <- which.max(ArrayTemp);
    if(IndexTemp==1){
      print(ArrayTemp[1]);
      return(c(XTemp));
    }
    else{
      XTemp <- NeighborTemp[,(IndexTemp-1)];
      #print(XTemp);
      #Sys.sleep(0.2);
    }
  }
}