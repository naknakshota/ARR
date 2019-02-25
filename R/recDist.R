#'@title Count Recursive Calls
#'
#'@description
#'\code{recDist} Counts all subproblems in order of frequency of times called and
#'returns the frequency table as a dataframe.
#'
#'@details
#'Takes the result of saveCalls and gives a frequency table sorted by frequency of recursive subproblem.
#'
#'@param result resulting character vector from saveCalls
#'
#'@export
#'
#'@return dataframe containing recursive subproblems in sorted order by frequency
#'
#'@examples
#'
#'fibResult <- saveCalls("output.txt")
#'recDist(fibResult)

recDist <- function(result){
  count <- as.character(table(result))
  count <- data.frame(unclass(table(result)))
  colnames(count) <- "freq"
  count$subProblems <- rownames(count)
  count <- count[,c(2,1)]
  rownames(count) <- NULL
  count <- count[order(count$freq),]
  return(count)
}
