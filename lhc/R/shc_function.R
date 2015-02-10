#' Steepest Hill Climbing function
#'
#' This function implements hill climbing algorithm with steepest ascent
#' @param X,Co,y This takes in the input of the vector for set of inputs, the randomly generated coefficients, and the mode of connection
#' @keywords steepest
#' @export
#' @examples
#' shc_function(X,Co,y)

shc_function <- function(X,Co,y){
  XTemp <- X;
  n <- length(X);
  Norm <- sum(X)+sum(X)^2;
  while(1==1){
    ProfitTemp <- profit_function(XTemp,Co);
    ArrayTemp <- ProfitTemp;
    NeighborTemp <- neighbor_function(XTemp,y);
    for(x in 2:(y*n)){
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