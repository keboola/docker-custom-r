FROM rocker/r-ver:3.4.2

ENV PATH /usr/local/lib/R/bin/:$PATH
ENV R_HOME /usr/local/lib/R

WORKDIR /tmp

# Custom Setup
RUN mkdir /usr/share/doc/R${R_VERSION} \
    && echo 'options(download.file.method = "libcurl")' >> /usr/local/lib/R/etc/Rprofile.site

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

COPY init.R /tmp/init.R

# Install some commonly used R packages
RUN R CMD javareconf && /usr/local/lib/R/bin/Rscript /tmp/init.R
