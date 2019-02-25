context("Test Memoized Fibonacci")

test_that("Memoized Fibonacci generates correct output", {
  expect_equal(fib_memoized(10,createList(10)),fib(10))
  expect_equal(fib_memoized(5,createList(5)),fib(5))
  expect_equal(fib_memoized(7,createList(20)),fib(7))
  expect_equal(fib_memoized(7,createList(10)),13)
  expect_is(fib_memoized(12), "numeric")
})