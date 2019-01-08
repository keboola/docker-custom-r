FROM rocker/r-ver:3.5.2

ENV PATH /usr/local/lib/R/bin/:$PATH
ENV R_HOME /usr/local/lib/R
ARG GITHUB_PAT

WORKDIR /tmp

# Custom Setup
RUN mkdir /usr/share/doc/R${R_VERSION} 

# Install dependencies for packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        default-jdk \
        ed \
        git \
        libbz2-dev \
        libcairo2-dev \
        libgdal-dev \
        libcgal-dev \
        libglu1-mesa-dev \
        libgsl0-dev \
        libproj-dev \
        libssl-dev \
        libx11-dev \
        libxt-dev \
        xfonts-base \
        unzip \
        x11proto-core-dev \
    && rm -rf /var/lib/apt/lists/*

COPY init-1.R /tmp/init-1.R
COPY init-2.R /tmp/init-2.R

# Install some commonly used R packages
RUN R CMD javareconf \
    && printf "GITHUB_PAT=$GITHUB_PAT\n" > .Renviron \
    && /usr/local/lib/R/bin/Rscript /tmp/init-1.R \
    && rm -f /tmp/init-1.R \
    && rm -f .Renviron

RUN printf "GITHUB_PAT=$GITHUB_PAT\n" > .Renviron \
    && /usr/local/lib/R/bin/Rscript /tmp/init-2.R \
    && rm -f /tmp/init-2.R \
    && rm -f .Renviron
