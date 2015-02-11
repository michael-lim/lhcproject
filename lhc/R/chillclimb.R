#' Compare Hill Climbing function
#'
#' This function implements hill climbing algorithm by comparing various ascent methods and giving the result that has the optimal solution
#' @param X,Co,y This takes in the input of the vector for set of inputs, the randomly generated coefficients, and the mode of connection
#' @keywords ascent
#' @export
#' @examples
#' chillclimb(X,Co,y)

chillclimb <- function(X,Co,y){
  Xresult <- 0;
  for(i in 1:3){
    if(i==1){
      print("Steepest Hill Climb");
    }
    else if(i==2){
      print("Median Hill Climb");
    }
    else{
      print("Least Hill Climb");
    }
    profit_function(hillclimb(X,Co,y,i),Co);
  }
}