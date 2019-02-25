#'@title Time Analysis
#'
#'@description
#'\code{analyzeTime} compares the time it takes to run two functions
#'
#'@details
#'This function takes two functions and displays the user time each
#'took, as well as a bar graph of the comparison
#'
#'@param title title of the graph to be created
#'@param fill a vector of length two of colors for the bargraphs
#'@param func1 first function to be analyzed
#'@param func2 second function to be analyzed
#'
#'@export
#'
#'@return a bar graph displaying the user time comparison of the two functions
#'
#'@examples
#'
#'analyzeTime(title = "Fibonacci vs. Memoized Fibonacci", func1 = fib(30), func2 = fib_memoized(30,createList(30)))

analyzeTime <- function(title, fill = c("cornflowerblue","#009E73"),func1, func2){
  timer1 <- function(fib1){
    system.time({
      fib1
    })
  }
  timedOne <- timer1(func1)[[1]]
  timedTwo <- timer1(func2)[[1]]
  timeType <- c("functionOne","functionTwo")
  analysisOne <- as.data.frame(timeType)
  analysisTwo <- as.data.frame(c(timedOne,timedTwo))
  timeAnalysis <- as.data.frame(cbind(analysisOne,analysisTwo))
  colnames(timeAnalysis) <- c("Function","Time")
  print(timeAnalysis)
  require(ggplot2)
  title = paste("User Time analysis of",title)
  ggplot(data=timeAnalysis, aes(x=Function, y=Time)) +
    geom_bar(stat="identity", fill = fill) + ggtitle(title)
}
