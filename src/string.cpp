#include <Rcpp.h>
#include "../inst/include/string.hpp"
using namespace Rcpp;
using namespace Rcppzhuoer;



// [[Rcpp::export]]
CharacterVector test_paste() {
    return CharacterVector::create(
        paste("hello ", 'h', "adle", 'y', " * ", 3.5),
        paste("a true: ", 1, ' ', true)
    );
}




