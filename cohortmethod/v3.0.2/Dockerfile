FROM rocker/rstudio:3.5.1

LABEL org.label-schema.license="Apache 2.0" \
      org.label-schema.description="CohortMethod v3.0.2 environment based on Rocker/verse:3.5.1" \
      org.label-schema.vcs-url="https://github.com/ABMI/ohdsi-docker/CohortMethod" \
      org.label-schema.vendor="OHDSI Population-Level Estimation Working Group" \
      maintainer="Seng Chan You <applegna@gmail.com>"



RUN apt-get update
RUN apt-get install -y default-jdk default-jre libxml2-dev libgit2-dev libmagick++-dev

RUN mkdir -p /opt/software/setup/R
ADD install_packages.r /opt/software/setup/R/
RUN Rscript /opt/software/setup/R/install_packages.r
