testthat::context('Testing export')
if (basename(getwd()) == 'testthat') setwd('../..')  # workspace is reset per file

testthat::test_that('paste()', {
    testthat::skip('skip')
    
    testthat::expect_identical(
        Rcpp::evalCpp('Rcppzhuoer::paste("hello ", \'h\', "adle", \'y\', " * ", 3.5)', depends = 'Rcppzhuoer'),
        "hello hadley * 3.5"
    )
    testthat::expect_identical(
        Rcpp::evalCpp('Rcppzhuoer::paste("a true: ", 1, \' \', true)', depends = 'Rcppzhuoer'),
        "a true: 1 true"
    )
});

testthat::test_that('tibble()', {
    testthat::skip('skip')
    
    testthat::expect_identical(
        Rcpp::evalCpp('Rcppzhuoer::as_tibble(List::create(IntegerVector::create(1, 2, 3)))', depends = 'Rcppzhuoer'),
        tibble::tibble(1:3) %>% rlang::set_names(NULL)
    )
});
