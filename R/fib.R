#'@title Basic Fibonacci
#'
#'@description
#'\code{fib} computes the nth fibonacci number (1-indexed)
#'
#'@details
#'This function calls itself for each recursive computation.
#'
#'@param n an integer
#'
#'@export
#'
#'@return the nth fibonacci number
#'
#'@examples
#'fib(10)

fib <- function(n){
  if(n <= 1) {
    return(n)
  } else {
    return(fib(n-1) + fib(n-2))
  }
}
