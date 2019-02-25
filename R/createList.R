#'@title Create list for memoized fibonacci
#'
#'@description
#'\code{createList} creates a list of length n for memoized fibonacci
#'
#'@param n an integer
#'
#'@export
#'
#'@return a n-length list with 1 as the first two elements, and -1 for the rest
#'
#'@examples
#'createList(10)

createList <- function(n){
  newlist <- list()
  for(i in 1:n){
    newlist <- c(newlist,-1)
  }
  newlist[[1]] <- 1
  newlist[[2]] <- 1
  return(newlist)
}
