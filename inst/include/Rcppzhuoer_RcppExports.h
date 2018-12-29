// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#ifndef RCPP_Rcppzhuoer_RCPPEXPORTS_H_GEN_
#define RCPP_Rcppzhuoer_RCPPEXPORTS_H_GEN_

#include <Rcpp.h>

namespace Rcppzhuoer {

    using namespace Rcpp;

    namespace {
        void validateSignature(const char* sig) {
            Rcpp::Function require = Rcpp::Environment::base_env()["require"];
            require("Rcppzhuoer", Rcpp::Named("quietly") = true);
            typedef int(*Ptr_validate)(const char*);
            static Ptr_validate p_validate = (Ptr_validate)
                R_GetCCallable("Rcppzhuoer", "_Rcppzhuoer_RcppExport_validate");
            if (!p_validate(sig)) {
                throw Rcpp::function_not_exported(
                    "C++ function with signature '" + std::string(sig) + "' not found in Rcppzhuoer");
            }
        }
    }

    inline List as_tibble(List l) {
        typedef SEXP(*Ptr_as_tibble)(SEXP);
        static Ptr_as_tibble p_as_tibble = NULL;
        if (p_as_tibble == NULL) {
            validateSignature("List(*as_tibble)(List)");
            p_as_tibble = (Ptr_as_tibble)R_GetCCallable("Rcppzhuoer", "_Rcppzhuoer_as_tibble");
        }
        RObject rcpp_result_gen;
        {
            RNGScope RCPP_rngScope_gen;
            rcpp_result_gen = p_as_tibble(Shield<SEXP>(Rcpp::wrap(l)));
        }
        if (rcpp_result_gen.inherits("interrupted-error"))
            throw Rcpp::internal::InterruptedException();
        if (Rcpp::internal::isLongjumpSentinel(rcpp_result_gen))
            throw Rcpp::LongjumpException(rcpp_result_gen);
        if (rcpp_result_gen.inherits("try-error"))
            throw Rcpp::exception(Rcpp::as<std::string>(rcpp_result_gen).c_str());
        return Rcpp::as<List >(rcpp_result_gen);
    }

}

#endif // RCPP_Rcppzhuoer_RCPPEXPORTS_H_GEN_
