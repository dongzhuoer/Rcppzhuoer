testthat::context('Testing string.cpp')
if (basename(getwd()) == 'testthat') setwd('../..')  # workspace is reset per file

testthat::test_that('paste() in c++', {
    testthat::expect_identical(
        test_paste(), 
        c("hello hadley * 3.5", "a true: 1 true")
    ) 
});



