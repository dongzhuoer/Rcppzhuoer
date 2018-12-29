#' @name cpp_paste
#' @title paste arguments into a string via `<<`
#' 
#' @description 
#' This function lives in C++, it can recieve arbitrary number and types of arguments (so we can't provide an R interface)
#' 
#' @details 
#' We enable `std::boolalpha`. 
#' 
#' @section C++ code:
#' ```
#' # include <Rcpp.h>
#' // [[Rcpp::depends(Rcppzhuoer)]]
#' # include <Rcppzhuoer.h>
#' using namespace Rcpp;
#' 
#' int main() {
#'     std::string str = Rcppzhuoer::paste("hello ", 'h', "adle", 'y', " * ", 3.5);
#'     Rcout << str;  // "hello hadley * 3.5"
#'     
#'     Rcout << Rcppzhuoer::paste("a true: ", 1, ' ', true);  // "a true: 1 true"
#' }
#' ```
#' 
#' @examples 
#' \dontrun{
#' # `std::string` in C++ can be converted to character scalar in R
#' Rcpp::evalCpp('Rcppzhuoer::paste("hello ", \'h\', "adle", \'y\', " * ", 3.5)', depends = 'Rcppzhuoer')
#' Rcpp::evalCpp('Rcppzhuoer::paste("a true: ", 1, \' \', true)', depends = 'Rcppzhuoer')
#' }
#' 
#'
NULL
