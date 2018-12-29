testthat::context('Testing string.cpp')
if (basename(getwd()) == 'testthat') setwd('../..')  # workspace is reset per file


testthat::test_that("as_tibble()", {
    l <- list(x = rnorm(3), y = 1:3);
    testthat::expect_identical(as_tibble(l), tibble::as_tibble(l))
    testthat::expect_identical(class(l), 'list')    # shouldn't modify input
    
    testthat::expect_error(
        as_tibble(list(x = rnorm(3), y = 1:2)),
        "2th element should be of length 3, not 2"
    )
    
    testthat::expect_error(
        as_tibble(list()),
        "not support empty list"
    )
})



