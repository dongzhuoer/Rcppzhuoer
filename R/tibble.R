#' @name cpp_as_tibble
#' @title convert list to tibble
#' 
#' @param l list. must have at least one element, and every element must have the same length, 
#' 
#' @return tibble
#' 
#' @details this function only serves as testing purpose, please use `as_tibble()` in C++
#' 
#' @section C++ code:
#' ```
#' # include <Rcpp.h>
#' // [[Rcpp::depends(Rcppzhuoer)]]
#' # include <Rcppzhuoer.h>
#' using namespace Rcpp;
#' 
#' int main() {
#'     IntegerVector a = IntegerVector::create(1, 2, 3);
#'     CharacterrVector b = CharacterrVector::create("a", "b", "c");
#'     List l = List::create(Named("a") = a, Named("b") = b);
#'     
#'     List tbl = Rcppzhuoer::as_tibble(l);
#' }
#' ```
#' 
#' @examples 
#' \dontrun{
#' # `std::string` in C++ can be converted to character scalar in R
#' Rcpp::evalCpp('Rcppzhuoer::as_tibble(List::create(IntegerVector::create(1, 2, 3)))', depends = 'Rcppzhuoer')
#' Rcpp::evalCpp('Rcppzhuoer::as_tibble(List::create(CharacterrVector::create("a", "b", "c")))', depends = 'Rcppzhuoer')
#' }
#' @export
list2tibble <- as_tibble
