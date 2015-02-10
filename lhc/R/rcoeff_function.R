#' Random Coefficient function
#'
#' This function generates a random set of constants
#' @param X This takes in the input of the vector for set of inputs
#' @keywords coefficient
#' @export
#' @examples
#' rcoeff_function(X)

rcoeff_function <- function(X){
  n <-length(X);
  Co <- runif((n*(n+3)/2), -1.0, 1.0);
  return(Co)
}