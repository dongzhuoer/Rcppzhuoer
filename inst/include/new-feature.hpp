#pragma once
#include <Rcpp.h>


// # this file facilitate using new features added recently

// ## move semantics
// 
// we provide a helper class to detect copy constructing

namespace Rcppzhuoer {
    template <typename T>
    struct foo{
        foo() = default;
        foo(foo &&) = default;
        foo& operator=(foo &&) = default;
        foo(const foo &)
        {
            Rcpp::Rcout << "copy loc\n";
        }
        foo& operator=(const foo &)
        {
            Rcpp::Rcout << "copy = loc\n";
            return *this;
        }
    };
}
