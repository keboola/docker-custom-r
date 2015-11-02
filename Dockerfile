# VERSION 1.0.1
FROM keboola/docker-base-r
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

WORKDIR /tmp

# Install some commonly used R packages 
RUN Rscript ./init.R
