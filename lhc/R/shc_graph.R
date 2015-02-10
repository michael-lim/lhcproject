#' Steepest Hill Climbing function - Graph
#'
#' This function implements hill climbing algorithm with steepest ascent, generating a graph at the end of the result
#' @param X,Co,y This takes in the input of the vector for set of inputs, the randomly generated coefficients, and the mode of connection
#' @keywords steepest
#' @export
#' @examples
#' shc_function(X,Co,y)

shc_graph <- function(X,Co,y){
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
    NeighborTemp <- neighbor_function(XTemp,y);
    for(x in 2:(y*n)){
      NTemp <- NeighborTemp[,(x-1)]
      NProfitTemp <- profit_function(NTemp,Co);
      ArrayTemp <- c(ArrayTemp,NProfitTemp);
    }
    IndexTemp <- which.max(ArrayTemp);
    if(IndexTemp==1){
      print(ArrayTemp[1]);
      plot.new();
      frame();
      plot(kD,XGraph/XNorm, main="Steepest Hill Climbing",xlab="Number of Iterations", ylab="Relative Profit value");
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