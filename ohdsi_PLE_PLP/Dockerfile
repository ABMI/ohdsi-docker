FROM rocker/rstudio:4.0.5
LABEL maintainer "OHDSI_PLE_PLP"
## install java
RUN apt-get update && \
    apt-get install -y default-jdk
RUN R CMD javareconf
RUN R -e "install.packages('rJava', dependencies = TRUE)"
# install devtools
RUN apt-get update
RUN apt-get install -y \
    build-essential \ 
    libcurl4-gnutls-dev \
    libxml2-dev \
    libssl-dev \
    libgit2-dev \
# install other
    libfontconfig1-dev \
    libcairo2-dev
RUN R -e "install.packages('devtools')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('shiny')"
RUN R -e "install.packages('shinycssloaders')"
RUN R -e "install.packages('shinydashboard')"
RUN R -e "install.packages('R.utils')"
RUN R -e "install.packages('rvg')"
# install PLP Packages 
RUN R -e 'devtools::install_github("OHDSI/OhdsiRTools",ref="v1.9.1")'
RUN R -e 'devtools::install_github("OHDSI/OhdsiSharing",ref="v0.2.2")'
RUN R -e 'devtools::install_github("OHDSI/DatabaseConnector",ref="v4.0.2")'
RUN R -e 'devtools::install_github("OHDSI/FeatureExtraction",ref="v3.1.0")'
RUN R -e 'devtools::install_github("OHDSI/PatientLevelPrediction",ref="v4.0.5")'
RUN R -e 'devtools::install_github("OHDSI/BigKnn",ref="v1.0.0")'
RUN R -e 'devtools::install_github("OHDSI/Andromeda",ref="v0.4.1")'
# install PLE Packages
RUN R -e 'devtools::install_github("OHDSI/CohortMethod",ref="v4.0.0")'
RUN R -e 'devtools::install_github("OHDSI/MethodEvaluation",ref="v2.0.0")'
RUN R -e 'devtools::install_github("OHDSI/EmpiricalCalibration",ref="v2.0.2")'
# install additional packages
RUN R -e "install.packages('renv')"
RUN R -e "install.packages('lubridate')"
# create folders
RUN mkdir -p /home/rstudio/temp
RUN mkdir -p /home/rstudio/jdbc
RUN mkdir -p /home/rstudio/analysis
RUN mkdir -p /home/rstudio/result
# install JDBC driver
RUN R -e "DatabaseConnector::downloadJdbcDrivers(dbms = 'oracle',pathToDriver = '/home/rstudio/jdbc')"
# PLP settings
RUN R -e "reticulate::install_miniconda()"
RUN R -e "PatientLevelPrediction::configurePython(envname='r-reticulate', envtype = 'conda');devtools::install_github('rstudio/keras');keras::install_keras(method = 'conda');"
RUN R -e "reticulate::conda_install(envname='r-reticulate', packages = c('scikit-survival'), forge = T, pip = T)"
RUN R -e "reticulate::conda_install(envname='r-reticulate', packages = c('pytorch', 'torchvision', 'cpuonly'), forge = TRUE, pip = FALSE, channel = 'pytorch', pip_ignore_installed = TRUE, conda = 'auto')"