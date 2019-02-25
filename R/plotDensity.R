#'@title Density Plot of Recusive calls
#'
#'@description
#'\code{plotDensity} Plots a density plot of the recursive calls
#'
#'@details
#'This function takes output from recDist and plots a density plot of all recursive calls
#'
#'@param data output from recDist
#'@param title title of graph (defaults to "Title")
#'@param color color of area of density plot (defaults to "cornflowerblue")
#'@param border color of outline of density plot (defaults to "red")
#'
#'@export
#'
#'@return density plot of data
#'
#'@examples
#'capture.output(recursiveCalls(fib,10), file = "output.txt")
#'fibResult <- saveCalls("output.txt")
#'plotDensity(recDist(fibResult))

plotDensity <- function(data,title="Title",color="cornflowerblue",border="red"){
  d <- density(data[,2])
  plot(d, main=title)
  polygon(d, col=color, border=border)
}
