FROM quay.io/keboola/docker-base-r
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

ENV DOCKER_CUSTOM_VERSION 0.0.2
ENV LANG en_US.UTF-8
WORKDIR /tmp

COPY init.R /tmp/init.R

# Install some commonly used R packages 
RUN Rscript /tmp/init.R
