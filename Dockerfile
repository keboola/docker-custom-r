FROM rocker/r-ver:3.6.2

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

# some stuff that is standard in the other base images
RUN apt-get update && apt-get upgrade -yq python3 \
    && apt-get install -yq --no-install-recommends \
        build-essential \
        emacs \
        git \
        inkscape \
        jed \
        libsm6 \
        libxext-dev \
        libxrender1 \
        lmodern \
        pandoc \
        python-dev \
        python3-pip \
        python3-setuptools \
        unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
