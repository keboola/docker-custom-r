#install some commonly used packages
withCallingHandlers(install.packages(
    c(
        'BTYD',
        'car', 'caret', 'caTools', 'ChannelAttribution', 'Cubist',
        'data.table', 'data.tree', 'DBI', 'devtools', 'doParallel', 'dplyr',
        'earth', 'ellipse', 'e1071',
        'forecast', 'foreach', 'fs',
        'gam', 'gbm', 'gdata', 'ggplot2', 'googleCloudStorageR', 'gsl',
        'htmlwidgets',
        'ipred', 'ISOweek',
        'jsonlite',
        'kernlab', 'klaR',
        'lattice',
        'magrittr', 'MASS', 'mda', 'mgcv', 'mlbench',
        'nlme', 'nnet',
        'party', 'pamr', 'pdfsearch', 'pdftools', 'plotly', 'pls', 'pROC', 'prophet', 'proxy', 'purrr',
        'randomForest', 'RANN', 'reshape', 'RcppArmadillo', 'rgdal', 'rJava', 'RJDBC', 'rversions',
        'spls', 'splitstackshape', 'sqldf', 'staplr', 'stringdist', 'stringi', 'stringr', 'subselect', 'superpc',
        'testthat', 'tidyverse', 'tidyxl', 'timeDate', 'tree',
        'unpivotr',
        'zoo'
    ),
    lib = "/usr/local/lib/R/site-library/",
    dependencies = c("Depends", "Imports", "LinkingTo"),
    INSTALL_opts = c("--no-html"),
    Ncpus = 2
), warning = function(w) stop(w))

# install the R application
devtools::install_github('keboola/r-docker-application', ref='2.0.2')
