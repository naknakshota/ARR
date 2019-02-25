#'@title Check All Recursive Calls
#'
#'@description
#'\code{recursiveCalls} computes the result of a recursive function
#'call and prints all recursive calls
#'
#'@details
#'This function takes a recursive function and its parameters and returns the
#'result of that function call and also prints all recursive calls. Useful for
#'checking for errors in recursive functions.
#'
#'@param recfunc: the recursive function to be called without the parenthesis or the arguments;
#'must have at least one recursive function call
#'@param ... the parameters of the function to be called
#'
#'@export
#'
#'@return the result of calling the input function with the given parameters
#'
#'@examples
#'
#'recursiveCalls(fib,5)

recursiveCalls <- function(recFunc,...){
  # create character vector
  func_vec <- deparse(recFunc)
  # replace function name
  library(stringr)
  funcName <- deparse(substitute(recFunc))
  func_vec <- str_replace_all(func_vec, funcName, "test")

  func_vec_new <- character(length(func_vec)+1)
  func_vec_new[1] <- func_vec[1]
  func_vec_new[2] <- func_vec[2]
  # insert
  call <- func_vec[1]
  call2 <- substr(call,11,nchar(call)-2)

  funcPar <- paste(funcName, '(',sep="")
  func_vec_new[3] <- paste("print(paste(funcPar, ", "paste(", call2, ",sep=','", ")", ", ')', ", "sep = ''))", sep = "")

  for(i in 3:length(func_vec)){
    func_vec_new[i+1] <- func_vec[i]
  }
  test <- eval(parse(text = func_vec_new))
  test(...)
}
