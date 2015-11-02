# install really required packages
install.packages(c('git2r', 'jsonlite', 'devtools', 'rJava', 'RJDBC'), repos = 'http://cran.us.r-project.org', dependencies = c("Depends", "Imports", "LinkingTo"), INSTALL_opts = c("--no-html"))

# install some commonly used packages
install.packages(c('stringr', 'corrgram', 'data.table', 'gbm', 'ggplot2', 'leaps', 'plyr'), repos = 'http://cran.us.r-project.org', dependencies = c("Depends", "Imports", "LinkingTo"), INSTALL_opts = c("--no-html"))

library('devtools')

# install the R application
install_github('keboola/r-application', ref = "master")
install_github('keboola/r-docker-application', ref = "master")
