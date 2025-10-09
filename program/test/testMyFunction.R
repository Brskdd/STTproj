source("../exec/myFunction.R")

library(testthat)

test_that(
  "test_my_funtion_plus_one", {
    calculatedResult <- plusOne(2)
    expectedResult <- 3
    expect_equal(calculatedResult, expectedResult)
  }
)