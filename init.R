# install really required packages

withCallingHandlers(install.packages(
    c('Cairo', 'codetools', 'curl', 'DBI', 'devtools', 'git2r', 'jsonlite', 'rJava', 'RJDBC', 'roxygen2', 'rversions', 'rstudioapi'), 
    dependencies = c("Depends", "Imports", "LinkingTo"), 
    INSTALL_opts = c("--no-html")
), warning = function(w) stop(w))

#install some commonly used packages
withCallingHandlers(install.packages(
    c(
        'ascii', 
        'BH', 'bitops', 'brew', 'BTYD',
        'car', 'caret', 'caTools', 'corrgram', 'Cubist',
        'data.table', 'data.tree', 'digest', 'doParallel', 'dplyr',
        'evaluate', 'earth', 'ellipse', 'e1071',
        'forecast', 'foreach',
        'gam', 'gbm', 'gdata', 'ggplot2', 'ggvis', 'gsl',
        'httr',
        'ipred', 'ISOweek',
        'kernlab', 'klaR', 
        'lattice', 'leaps',
        'MASS', 'magrittr', 'mda', 'mime', 'moments', 'memoise', 'mgcv', 'mlbench',
        'nlme', 'nloptr', 'nnet', 
        'outliers', 
        'party', 'pamr', 'pls', 'plyr', 'pROC', 'proxy',
        'qdap', 'quantreg',
        'randomForest', 'RANN', 'reshape2', 'R6', 'Rcpp', 'RcppArmadillo', 'rgdal',
        'sp', 'spls', 'sqldf', 'stringi', 'stringr', 'subselect', 'superpc',
        'testthat', 'timeDate', 'tree',
        'whisker',
        'xml2',
        'zoo'
    ), 
    dependencies = c("Depends", "Imports", "LinkingTo"), 
    INSTALL_opts = c("--no-html")
), warning = function(w) stop(w))

#install packages which throw warnings (unsupported version)
install.packages(
    c('datasets', 'ddd', 'graphics', 'grDevices', 'methods', 'stats', 'utils'), 
    dependencies = c("Depends", "Imports", "LinkingTo"), 
    INSTALL_opts = c("--no-html")
)

packageurl <- "https://cran.r-project.org/src/contrib/Archive/ChannelAttribution/ChannelAttribution_1.7.tar.gz"
install.packages(packageurl, repos=NULL, type="source")

# install the R application
devtools::install_github('keboola/r-application', ref = "1.0.2")
devtools::install_github('keboola/r-docker-application', ref = "1.0.2")