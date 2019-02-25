#'@title Distribution Plot
#'
#'@description
#'\code{plotDist} Plots a distribution plot of the result of recDist.
#'
#'@details
#'This function is a visualization tools for the result of recDist. It allows the user
#'to see how often subproblems are called.
#'
#'@param data result of recDist
#'@param xlabel x label title of graph (defaults to "x label")
#'@param ylabel y label title of graph (defaults to "y label")
#'@param title title of graph (defaults to "Title")
#'@param color color of points (defaults to "darkblue")
#'
#'@export
#'
#'@return the result of x multiplied by y
#'
#'@examples
#'capture.output(recursiveCalls(fib,10), file = "output.txt")
#'fibResult <- saveCalls("output.txt")
#'plotDist(recDist(fibResult))

plotDist <- function(data,xlabel="x label",ylabel="y label", title="Title",color="darkblue"){
  require(ggplot2)
  ggplot(data = data,
         mapping = aes(x = data[,1], y = data[,2])) +
    geom_point() +
    xlab(xlabel) +
    ylab(ylabel) +
    ggtitle(title) +
    geom_point(color=color)
}

