#'@title Multiply By Recursive Addition
#'
#'@description
#'\code{mult} multiplies the first and second parameter
#'and returns result
#'
#'@details
#'This function does the same operation as * but by recursively adding values
#'
#'@param x first value for multiplication
#'@param y second value for multiplication
#'
#'@export
#'
#'@return the result of x multiplied by y
#'
#'@examples
#'
#'mult(2,3)

mult <- function(x, y){
  if(y == 0){
    0
  } else{
    x + mult(x, y - 1)
  }
}
