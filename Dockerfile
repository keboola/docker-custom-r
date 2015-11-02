# VERSION 1.0.1
FROM keboola/docker-base-r
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

WORKDIR /tmp

COPY init.R /tmp/init.R

# Install some commonly used R packages 
RUN Rscript /tmp/init.R
