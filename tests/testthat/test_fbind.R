context("Binding factors")

test_that("fbind binds factor (or character)", {
  x <- c('a', 'b')
  x_fact <- factor(x)
  y <- c('c', 'd')
  z <- factor(c('a', 'b', 'c', 'd'))

  expect_identical(fbind(x, y), z)
  expect_identical(fbind(x_fact, y), z)
})

test_that("cannot handle weird input", {
  x <- c('a', 'b')
  y <- data.frame(a = c(1, 2), b = c(3, 4))

  expect_error(fbind(x, y))
})

