context("Frequency Table for Factor")

test_that("input bust be factor", {
  x <- c(1:100)

  expect_error(freq_out(x))
})

test_that("freq_out counts the frequency correctly", {
  x <- as.factor(c(rep('a', 5), rep('b', 5), rep('c', 5)))
  tb <- freq_out(x)

  expect_that(tb$n[1], equals(5))
})

test_that("freq_out counts every level", {
  x <- as.factor(c(rep('a', 5), rep('b', 5), rep('c', 5)))
  tb <- freq_out(x)

  expect_that(nrow(tb), equals(length(levels(x))))
})
