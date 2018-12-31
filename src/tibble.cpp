// [[Rcpp::plugins(cpp17)]]
// [[Rcpp::interfaces(r, cpp)]]

#include <Rcpp.h>
#include "../inst/include/string.hpp"

using namespace Rcpp;
using Rcppzhuoer::paste;

// [[Rcpp::export]]
List as_tibble(List l) {
    if (l.size() == 0) stop("not support empty list");
    
    unsigned len = as<GenericVector>(l[0]).size();
    for (unsigned i {1}; i < l.size(); ++i) {
        unsigned tmp = as<GenericVector>(l[i]).size();
        if (len != tmp) 
            stop(paste(i+1, "th element should be of length ", len, ", not ", tmp).c_str());
    }

    List tbl = clone(l);
    tbl.attr("class") = CharacterVector::create("tbl_df", "tbl", "data.frame");
    tbl.attr("row.names") = IntegerVector::create(NA_INTEGER, -len);
    return tbl;
}

