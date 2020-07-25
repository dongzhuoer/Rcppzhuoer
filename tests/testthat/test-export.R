testthat::context('Testing C++ export')
setwd(here::here(''))  # workspace is reset per file

testthat::test_that('paste()', {
    testthat::skip_if(getOption('testthat_quick'))

    testthat::expect_identical(
        callr::r(function() {Rcpp::evalCpp('Rcppzhuoer::paste("a true: ", 1, \' \', true)', depends = 'Rcppzhuoer')}),
        "a true: 1 true"
    )
});

testthat::test_that('tibble()', {
    testthat::skip_if(getOption('testthat_quick'))
    
    testthat::expect_identical(
        callr::r(function() {Rcpp::evalCpp('Rcppzhuoer::as_tibble(List::create(Named("x") = IntegerVector::create(1, 2, 3)))', depends = 'Rcppzhuoer')}),
        tibble::tibble(x = 1:3)
    )
});
