testthat::context('Initialize environment')
if (basename(getwd()) == 'testthat') setwd('../..')  # workspace is reset per file
# refer to http://testthat.r-lib.org/reference/test_dir.html#test-files

options(testthat_quick = F);

# this package is kinds of special, it has to be installed for testing C++ export
if (!'Rcppzhuoer' %in% .packages(T)) callr::rcmd('INSTALL', getwd())

