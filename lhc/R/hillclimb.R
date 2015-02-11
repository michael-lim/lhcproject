#' Hill Climbing function
#'
#' This function implements hill climbing algorithm with various ascent methods specified the user
#' @param X,Co,y,m This takes in the input of the vector for set of inputs, the randomly generated coefficients, the mode of connection, and the hill climbing mode (1= Steepest, 2= Median, 3= Least)
#' @keywords ascent
#' @export
#' @examples
#' hillclimb(X,Co,y,m)

hillclimb <- function(X,Co,y,m){
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
    if(which.max(ArrayTemp)==1){
      #print(ArrayTemp[1]/Norm*100);
      return(c(XTemp));
    }
    else{
      if(m==1){ITemp <- max(ArrayTemp[ArrayTemp>ArrayTemp[1]]);}
      else if(m==2){ITemp <- median(ArrayTemp[ArrayTemp>ArrayTemp[1]]);}
      else if(m==3){ITemp <- min(ArrayTemp[ArrayTemp>ArrayTemp[1]]);}
      else {
        print("Mode out of bound");
        return(0);
      }
      if(ITemp==ArrayTemp[1]){
        #print(ArrayTemp[1]/Norm*100);
        return(c(XTemp));
      }
      else{
        IndexTemp <- which.min(abs(ArrayTemp - ITemp));
        XTemp <- NeighborTemp[,(IndexTemp-1)];
        #print(XTemp);
        #Sys.sleep(0.2);
      }
    }
  }
}