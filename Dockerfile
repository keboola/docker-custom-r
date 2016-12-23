FROM quay.io/keboola/docker-base-r-packages:latest

COPY init.R /tmp/init.R

# Install R packages 
RUN /usr/local/src/R/Rscript /tmp/init.R
