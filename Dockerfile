FROM quay.io/keboola/docker-base-r-packages:3.2.1-l
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

COPY init.R /tmp/init.R

# Install R packages 
RUN /usr/local/src/R/Rscript /tmp/init.R
