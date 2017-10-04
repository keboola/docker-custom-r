FROM rocker/r-ver:3.4.1

ENV PATH=/usr/local/lib/R/bin/:$PATH

WORKDIR /tmp

# Custom Setup
RUN mkdir /usr/share/doc/R${R_VERSION} \
    && echo 'options(repos = c(CRAN = "https://cran.r-project.org", "https://cran.rstudio.com/", "https://mirrors.nics.utk.edu/cran/", "https://cran.mtu.edu/"))' >> ${R_HOME}/etc/Rprofile.site \
    && echo 'options(download.file.method = "libcurl")' >> ${R_HOME}/etc/Rprofile.site

# Install dependencies for packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        default-jdk \
        ed \
        git \
        libbz2-dev \
        libcairo2-dev \
        libgdal-dev \
        libgsl0-dev \
        libproj-dev \
        libssl-dev \
        libx11-dev \
        libxt-dev \
        xfonts-base \
        unzip \
        wget \
        x11proto-core-dev \
    && rm -rf /var/lib/apt/lists/*

COPY init.R /tmp/init.R

# Install some commonly used R packages
RUN R CMD javareconf && /usr/local/lib/R/bin/Rscript /tmp/init.R
