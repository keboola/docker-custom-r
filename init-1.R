# install really required packages
withCallingHandlers(install.packages(
    c('Cairo', 'DBI', 'devtools', 'rJava', 'RJDBC', 'rversions'), 
    lib = "/usr/local/lib/R/site-library/",
    dependencies = c("Depends", "Imports", "LinkingTo"), 
    INSTALL_opts = c("--no-html"),
    Ncpus = 2
), warning = function(w) stop(w))

# install the R application
devtools::install_github('keboola/r-docker-application', ref = "2.0.2")
