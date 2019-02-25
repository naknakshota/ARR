context("Test Create List")

test_that("List size check", {
  expect_equal(length(createList(10),10))
  expect_equal(length(createList(20),20))
  expect_equal(length(createList(15),15))
  expect_is(createList(10),"list")
})
