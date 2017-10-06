# install really required packages

withCallingHandlers(install.packages(
    c('Cairo', 'codetools', 'curl', 'DBI', 'devtools', 'git2r', 'jsonlite', 'rJava', 'RJDBC', 'roxygen2', 'rversions', 'rstudioapi'), 
    dependencies = c("Depends", "Imports", "LinkingTo"), 
    INSTALL_opts = c("--no-html")
), warning = function(w) stop(w))

#install some commonly used packages
withCallingHandlers(install.packages(
    c(
        'BTYD',
        'car', 'caret', 'caTools', 'Cubist',
        'data.table', 'data.tree', 'digest', 'doParallel', 'dplyr',
        'earth', 'ellipse', 'e1071',
        'forecast', 'foreach',
        'gam', 'gbm', 'gdata', 'ggplot2', 'gsl',
        'httr',
        'ipred', 'ISOweek',
        'kernlab', 'klaR', 
        'lattice',
        'MASS', 'mda', 'mgcv', 'mlbench',
        'nlme', 'nnet', 
        'party', 'pamr', 'pls', 'plyr', 'pROC', 'proxy',
        'randomForest', 'RANN', 'reshape2', 'R6', 'Rcpp', 'RcppArmadillo', 'rgdal',
        'spls', 'sqldf', 'stringi', 'stringr', 'subselect', 'superpc',
        'testthat', 'timeDate', 'tree',
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