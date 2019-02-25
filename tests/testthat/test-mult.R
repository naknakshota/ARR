context("Recursive Multiplication Function")

test_that("Multiplication Works", {
  expect_equal(2*3,mult(2,3))
  expect_equal(5*6,mult(5,6))
  expect_equal(20*743,mult(200,743))
})


test_that("Laws of Multiplication are preserved", {
  expect_equal(mult(8,7),mult(7,8))
  expect_equal(mult(5,6)+mult(2,3),mult(2,3)+mult(5,6))
  expect_is(mult(44,2), "numeric")
})

