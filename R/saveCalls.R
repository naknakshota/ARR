#'@title Save All Recursive Calls
#'
#'@description
#'\code{saveCalls} Returns character vector containing all recursive subproblems
#'
#'@details
#'Use this function in conjunction with capture.output and recursiveCalls.
#'Call capture.output where first parameter is calling recursiveCalls on any recursive function
#'and second parameter is the file name you would like to output it to.
#'
#'@param filename the file you saved in capture.output
#'
#'@export
#'
#'@return Character vector containing every recursive call
#'
#'@examples
#'
#'capture.output(recursiveCalls(fib,10), file = "output.txt")
#'fibResult <- saveCalls("output.txt")
#'
#'
#'newlist1 <- createList(10)
#'capture.output(recursiveCalls(fib_memoized,10,newlist1), file = "output.txt")
#'memoizedResult <- saveCalls("output.txt")

saveCalls <- function(filename){
  output <- read.csv(filename, header = F, stringsAsFactors = F)
  recurse <- output[-(length(output$V1)),]
  recurse <- substr(recurse, 5, length(recurse))
  return(recurse)
}
