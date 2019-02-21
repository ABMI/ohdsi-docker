options(repos=structure(c(CRAN="http://cloud.r-project.org/")))

install.packages(c('xml2', 'devtools'), dependencies = T)

devtools::install_github("ohdsi/OhdsiRTools")
devtools::install_github("ohdsi/SqlRender")
devtools::install_github("ohdsi/DatabaseConnector")
devtools::install_github("ohdsi/OhdsiSharing")
devtools::install_github("ohdsi/FeatureExtraction")
devtools::install_github("ohdsi/CohortMethod")
devtools::install_github("ohdsi/EmpiricalCalibration")
devtools::install_github("ohdsi/MethodEvaluation")
