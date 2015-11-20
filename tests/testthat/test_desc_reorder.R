context("Reorder Levels")

test_that("first argument must be factor", {
  x <- c('a', 'b', 'c')
  y <- c(2, 3, 1)

  expect_error(desc_reorder(x, y))
})

test_that("second argument must be numeric", {
  x <- as.factor(c('a', 'b', 'c'))
  y <- c("This", "is", "wrong")

  expect_error(desc_reorder(x, y))
})

test_that("reorder in descending order", {
  x <- as.factor(c('a', 'b', 'c'))
  y <- c(1, 3, 2)

  x.new1 <- desc_reorder(x, y)
  x.new2 <- reorder(x, -y)
  expect_identical(x.new1, x.new2)
})
