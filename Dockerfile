FROM rocker/r-ver:4.4.1

ENV PATH /usr/local/lib/R/bin/:$PATH
ENV R_HOME /usr/local/lib/R
ARG GITHUB_PAT

WORKDIR /tmp

# Custom Setup
RUN mkdir /usr/share/doc/R${R_VERSION}

# Install dependencies for packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        default-jdk \
        ed \
        emacs \
        git \
        gsfonts \
        imagemagick \
        inkscape \
        jed \
        libbz2-dev \
        libcairo2-dev \
        libcurl4-openssl-dev \
        libgdal-dev \
        libgit2-dev  \
        libcgal-dev \
        libxext-dev \
        libglu1-mesa-dev \
        libicu-dev \
        libgsl0-dev \
        libmagick++-dev \
        libpng-dev \
        libpoppler-cpp-dev \
        libproj-dev \
        libsm6 \
        libssl-dev \
        libudunits2-dev \
        libx11-dev \
        libxml2-dev \
        libxrender1 \
        libxt-dev \
        libglpk40 \
        lmodern \
        make \
        pandoc \
        python-dev-is-python3 \
        python3-pip \
        python3-setuptools \
        r-cran-cairo \
        tk \
        unzip \
        xfonts-base \
        x11proto-core-dev \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

COPY init.R /tmp/init.R

RUN python3 -m pip install --upgrade pip

# Install some commonly used R packages
RUN R CMD javareconf \
    && printf "GITHUB_PAT=$GITHUB_PAT\n" > .Renviron \
    && /usr/local/lib/R/bin/Rscript /tmp/init.R \
    && rm -f /tmp/init.R \
    && rm -f .Renviron
