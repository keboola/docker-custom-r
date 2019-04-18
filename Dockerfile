FROM quay.io/keboola/docker-base-r:4.0.1

ENV PATH /usr/local/lib/R/bin/:$PATH
ENV R_HOME /usr/local/lib/R
ARG GITHUB_PAT

WORKDIR /tmp

COPY init-1.R /tmp/init-1.R

# Install some commonly used R packages
RUN R CMD javareconf \
    && printf "GITHUB_PAT=$GITHUB_PAT\n" > .Renviron \
    && /usr/local/lib/R/bin/Rscript /tmp/init-1.R \
    && rm -f /tmp/init-1.R \
    && rm -f .Renviron
