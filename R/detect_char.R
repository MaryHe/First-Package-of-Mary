#' Detect a vector that could be of class character
#'
#' @param x a vector
#' @param convert a logical value indicating whether to convert the vector into character if it is
#'        suspected by the function to be of class character. Default is F
#'
#' @return If convert is T, return converted vector of class character. Otherwise, return nothing but
#'         print corresponding messages
#' @export
#' @examples
#' x <- as.factor(c("This", "is", "actually", "a", "sentence"))
#' class(x)
#' detect_char(x)
#' xnew <- detect_char(x, convert = T)
#' class(xnew)
detect_char <- function(x, convert = F){
  assertthat::assert_that(is.atomic(x))
  assertthat::assert_that(!is.matrix(x))
  assertthat::assert_that(!is.null(x))

  if(is.numeric(x)) print("This is a numeric vector")

  else if(is.character(x)) print("This is already a character vector")

  else if(dplyr::n_distinct(x) == length(x)){
    if(convert == T){
      return(as.character(x))
    }
    else{
      print("Number of unique values equals length, consider this variable of class character?")
      print("Set convert = T to convert it into character")
    }
  }

  else print("This variable should not be of class character")
}
