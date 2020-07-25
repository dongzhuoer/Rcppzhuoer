#include <Rcpp.h>
#include "../inst/include/string.hpp"

using namespace Rcpp;



// [[Rcpp::export]]
CharacterVector test_paste() {
    return CharacterVector::create(
        Rcppzhuoer::paste("hello ", 'h', "adle", 'y', " * ", 3.5),
        Rcppzhuoer::paste("a true: ", 1, ' ', true)
    );
}




