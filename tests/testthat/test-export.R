testthat::context('Testing C++ export')
if (basename(getwd()) == 'testthat') setwd('../..')  # workspace is reset per file

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
        callr::r(function() {Rcpp::evalCpp('Rcppzhuoer::as_tibble(List::create(IntegerVector::create(1, 2, 3)))', depends = 'Rcppzhuoer')}),
        tibble::tibble(1:3) %>% rlang::set_names(NULL)
    )
});
