#' Reorder levels of a factor according to some corresponding numeric values in descending order
#'
#' @param x A vector of class factor to be reordered
#' @param y A numeric vector
#' @param fun a function whose first argument is a vector and returns a scalar, to be applied
#'        to each subset of x determined by the levels of y
#'
#' @return A factor with desired reordered levels
#' @export
#' @examples
#' boxplot(Sepal.Width ~ Species, data = iris)
#' boxplot(Sepal.Width ~ desc_reorder(Species, Sepal.Width), data = iris)
desc_reorder <- function(x, y, fun = mean){
  assertthat::assert_that(is.factor(x))
  assertthat::assert_that(is.numeric(y))

  return(reorder(x, dplyr::desc(y), fun))
}
