context("Detecting Characters")

test_that("input cannot be data.frame", {
  x <- data.frame(v1 = c('a', 'b'), v2 = c('c', 'd'))

  expect_error(detect_char(x))
})


test_that("input cannot be matrix", {
  x <- matrix(c('a', 'b', 'c', 'd'), nrow = 2)

  expect_error(detect_char(x))
})

test_that("returns character variable when convert = T", {
  x <- as.factor(c("This", "is", "actually", "a", "sentence"))
  xnew <- detect_char(x, convert = TRUE)
  expect_true(is.character(xnew))
})

