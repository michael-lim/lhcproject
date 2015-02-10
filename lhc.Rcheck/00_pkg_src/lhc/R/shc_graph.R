#' Steepest Hill Climbing function - Graph
#'
#' This function implements hill climbing algorithm with steepest ascent, generating a graph at the end of the result
#' @param X,Co This takes in the input of the vector for set of inputs and the randomly generated coefficients
#' @keywords steepest
#' @export
#' @examples
#' shc_function(X,Co)

shc_graph <- function(X,Co){
  XTemp <- X;
  XNorm <- abs(profit_function(XTemp,Co));
  n <- length(X);
  Norm <- sum(X)+sum(X)^2;
  XGraph <- c(profit_function(XTemp,Co));
  k <- 0;
  kD <- c(k);
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
      plot(kD,XGraph/XNorm);
      plotlabel("Number of Iterations", "Relative Profit value");
      return(c(XTemp));
    }
    else{
      XTemp <- NeighborTemp[,(IndexTemp-1)];
      XGraph <- c(XGraph, profit_function(XTemp,Co));
      #print(XTemp);
      #Sys.sleep(0.2);
      k<-k+1;
      kD <- c(kD,k);
    }
  }
}