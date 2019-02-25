#'@title Memoized Fibonacci
#'
#'@description
#'\code{fib_memoized} computes the nth fibonacci number (1-indexed)
#'
#'@details
#'This function uses memoization and is more efficient than \code{fib}
#'
#'@param n an integer
#'@param newlist createList(n)
#'
#'@export
#'
#'@return the nth fibonacci number
#'
#'@examples
#'fib_memoized(10,createList(10))[[1]]

fib_memoized <- function(n,newlist){
  if(n == 1){
    return(newlist[[1]])
  } else if(n == 2){
    return(newlist[[2]])
  } else{
    if(newlist[[n]] != -1){
      return(list(newlist[[n]],newlist))
    } else{
      newlist[[n-2]] = fib_memoized(n-2,newlist)[[1]]
      newlist[[n-1]] = fib_memoized(n-1,newlist)[[1]]
      newlist[[n]] = fib_memoized(n-2,newlist)[[1]] + fib_memoized(n-1,newlist)[[1]]
    }
  }
  return(list(newlist[[n]],newlist))
}
