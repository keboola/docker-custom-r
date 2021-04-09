#install some commonly used packages
withCallingHandlers(install.packages(
    c(
        'BTYD',
        'car', 'caret', 'caTools', 'ChannelAttribution', 'Cubist',
        'data.table', 'data.tree', 'DBI', 'devtools', 'doParallel', 'dplyr',
        'earth', 'ellipse', 'e1071',
        'forecast', 'foreach',
        'gam', 'gbm', 'gdata', 'gsl',
        'ipred', 'ISOweek',
        'kernlab', 'klaR',
        'lattice',
        'MASS', 'mda', 'mgcv', 'mlbench',
        'nlme', 'nnet',
        'party', 'pamr', 'pls', 'pROC', 'proxy', 'purrr',
        'randomForest', 'RANN', 'RcppArmadillo', 'rgdal', 'rJava', 'RJDBC', 'rversions',
        'spls', 'sqldf', 'subselect', 'superpc',
        'testthat', 'tidyverse', 'timeDate', 'tree',
        'zoo'
    ),
    lib = "/usr/local/lib/R/site-library/",
    dependencies = c("Depends", "Imports", "LinkingTo"),
    INSTALL_opts = c("--no-html"),
    Ncpus = 2
), warning = function(w) stop(w))

# prophet cannot be downloaded from CRAN repository
devtools::install_github('facebook/prophet', ref='0.6', subdir='/R')

# install the R application
devtools::install_github('keboola/r-docker-application', ref='2.0.2')
