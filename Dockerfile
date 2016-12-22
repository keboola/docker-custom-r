FROM quay.io/keboola/docker-base-r-packages:3.3.2-a

COPY init.R /tmp/init.R

# Install R packages 
RUN /usr/local/src/R/Rscript /tmp/init.R
