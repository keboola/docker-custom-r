#install some commonly used packages
withCallingHandlers(install.packages(
    c(
        'BTYD',
        'car', 'caret', 'caTools', 'ChannelAttribution', 'Cubist',
        'data.table', 'data.tree', 'digest', 'doParallel', 'dplyr',
        'earth', 'ellipse', 'e1071',
        'forecast', 'foreach',
        'gam', 'gbm', 'gdata', 'ggplot2', 'gsl',
        'ipred', 'ISOweek',
        'kernlab', 'klaR', 
        'lattice', 'lubridate',
        'MASS', 'mda', 'mgcv', 'mlbench',
        'nlme', 'nnet', 
        'party', 'pamr', 'pls', 'plyr', 'pROC', 'proxy', 'purrr',
        'randomForest', 'RANN', 'reshape2', 'R6', 'RcppArmadillo', 'rgdal',
        'spls', 'sqldf', 'stringi', 'stringr', 'subselect', 'superpc',
        'testthat', 'tidyverse', 'timeDate', 'tree',
        'zoo'
    ), 
    lib = "/usr/local/lib/R/site-library/",
    dependencies = c("Depends", "Imports", "LinkingTo"), 
    INSTALL_opts = c("--no-html"),
    Ncpus = 2
), warning = function(w) stop(w))
