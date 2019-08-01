FROM chandryou/patientlevelprediction_cpu:3.0.0

ARG WHEN

LABEL org.label-schema.license="Apache 2.0" \
      org.label-schema.description="Docker image for the OHDSI tutorial in August 2019 Korea" \
      org.label-schema.vcs-url="https://github.com/ABMI/ohdsi-docker" \
      org.label-schema.vendor="OHDSI-Korea" \
      maintainer="Seng Chan You <applegna@gmail.com>"

## Install OHDSI R packages
RUN R -e ' devtools::install_github("ohdsi/CohortMethod", ref = "v3.0.2"); \
           devtools::install_github("ohdsi/EmpiricalCalibration", ref = "v1.3.6"); \
           devtools::install_github("ohdsi/MethodEvaluation", ref = "v0.3.1"); \
           install.packages(c("rvg","shinycssloaders","shinydashboard"))'
