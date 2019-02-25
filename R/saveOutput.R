#'@title Save Output (Printed Results) from a function
#'
#'@description
#'\code{saveOutput} Takes print function calls from function and returns output
#'in desired format.
#'
#'@details
#'This function takes every print call in the function called as a parameter
#'and adds the argument of the print function to a character vector and returns
#'the output in specified file format.
#'
#'@param x: first value for multiplication
#'@param y: second value for multiplication
#'
#'@export
#'
#'@return the result of x multiplied by y
#'
#'@examples
#'
#'mult(2,3)

saveOutput <- function (...,
                        file = NULL,
                        append = FALSE,
                        type = c("output", "message"),
                        split = FALSE) {
  args <- substitute(list(...))[-1L]
  type <- match.arg(type)
  rval <- NULL
  closeit <- TRUE
  if (is.null(file))
    file <- textConnection("rval", "w", local = TRUE)
  else if (is.character(file))
    file <- file(file, if (append)
      "a"
      else "w")
  else if (inherits(file, "connection")) {
    if (!isOpen(file))
      open(file, if (append)
        "a"
        else "w")
    else closeit <- FALSE
  }
  else stop("'file' must be NULL, a character string or a connection")
  sink(file, type = type, split = split)
  on.exit({
    sink(type = type, split = split)
    if (closeit) close(file)
  })
  pf <- parent.frame()
  evalVis <- function(expr) withVisible(eval(expr, pf))
  for (i in seq_along(args)) {
    expr <- args[[i]]
    tmp <- switch(mode(expr), expression = lapply(expr, evalVis),
                  call = , name = list(evalVis(expr)), stop("bad argument"))
    for (item in tmp) if (item$visible)
      print(item$value)
  }
  on.exit()
  sink(type = type, split = split)
  if (closeit)
    close(file)
  if (is.null(rval))
    invisible(NULL)
  else rval
}
