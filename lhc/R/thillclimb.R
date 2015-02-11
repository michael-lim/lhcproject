#' Table Hill Climbing function
#'
#' This function implements hill climbing algorithm by comparing various ascent methods and giving the tables of solution
#' @param y,No,Ev,St This takes in the mode of connection, number of inputs, expected value of each input, and the number of sets generated
#' @keywords ascent
#' @export
#' @examples
#' thillclimb(y,No,Ev,St)

thillclimb <- function(y,No,Ev,St){
  Steepv <- c(0);
  Leastv <- c(0);
  Meanv <- c(0);
  for(j in 1:St){
    XTemp <- sample(1:2*Ev, No, replace=T);
    Co <- rcoeff_function(XTemp);
    Norm <- sum(XTemp)+sum(XTemp)^2;
    for(i in 1:3){
      if(i==1){
        Steepv <- cbind(Steepv,(profit_function(hillclimb(XTemp,Co,y,i),Co))/Norm*100);
      }
      else if(i==2){
        Meanv <- cbind(Meanv,(profit_function(hillclimb(XTemp,Co,y,i),Co))/Norm*100);
      }
      else{
        Leastv <- cbind(Leastv,(profit_function(hillclimb(XTemp,Co,y,i),Co))/Norm*100);
      }
    }
  }
  Steepv <- Steepv[,-1];
  Leastv <- Leastv[,-1];
  Meanv <- Meanv[,-1];
  print("Result");
  Stm<-sum(Steepv)/St;
  Stsem<-sd(Steepv)/sqrt(St);
  Mnm<-sum(Meanv)/St;
  Mnsem<-sd(Meanv)/sqrt(St);
  Lsm<-sum(Leastv)/St;
  Lssem<-sd(Leastv)/sqrt(St);
  resultdata <- cbind(c(Stm,Stsem),c(Mnm,Mnsem),c(Lsm,Lssem));
  rownames(resultdata) <- c(y,"SEM");
  colnames(resultdata) <- c("Steep","Median","Least");
  resultdata <- as.table(resultdata);
  resultdata
}