#' Make a frequency table for a factor
#'
#' @param x factor
#'
#' @return tbl_df
#' @export
#' @examples
#' freq_out(iris$Species)
#' @importFrom dplyr %>%
freq_out <- function(x) {
  assertthat::assert_that(is.factor(x))

  xdf <- dplyr::data_frame(x)
  dplyr::count(xdf, x)
}
