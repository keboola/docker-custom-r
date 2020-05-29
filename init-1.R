#install some commonly used packages
withCallingHandlers(install.packages(
    c(
        'BTYD',
        'car', 'caret', 'caTools', 'ChannelAttribution', 'Cubist',
        'data.table', 'data.tree', 'doParallel', 'dplyr',
        'earth', 'ellipse', 'e1071',
        'forecast', 'foreach',
        'gam', 'gbm', 'gdata', 'gsl',
        'ipred', 'ISOweek',
        'kernlab', 'klaR',
        'lattice',
        'MASS', 'mda', 'mgcv', 'mlbench',
        'nlme', 'nnet',
        'party', 'pamr', 'pls', 'pROC', 'prophet', 'proxy',
        'randomForest', 'RANN', 'rgdal',
        'spls', 'sqldf', 'superpc',
        'testthat', 'timeDate', 'tree',
        'zoo'
    ),
    lib = "/usr/local/lib/R/site-library/",
    dependencies = c("Depends", "Imports", "LinkingTo"),
    INSTALL_opts = c("--no-html"),
    Ncpus = 2
), warning = function(w) stop(w))

# install the R application
devtools::install_github('keboola/r-docker-application', ref = "2.0.2")
