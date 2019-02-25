context("Test Memoized Fibonacci")

test_that("Fibonacci generates correct output", {
  expect_equal(55,fib(10))
  expect_equal(fib(1),1)
  expect_equal(fib(2),1)
  expect_is(fib(12), "numeric")
})


test_that("Laws of Multiplication are preserved", {
  expect_equal(mult(8,7),mult(7,8))
  expect_equal(mult(5,6)+mult(2,3),mult(2,3)+mult(5,6))
  expect_is(mult(44,2), "numeric")
})