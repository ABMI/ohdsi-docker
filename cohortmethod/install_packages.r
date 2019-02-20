options(repos=structure(c(CRAN="http://cloud.r-project.org/")))

install.packages(c('xml2', 'devtools'), dependencies = T)

devtools::install_github("ohdsi/SqlRender", ref = "v1.5.2")
devtools::install_github("ohdsi/DatabaseConnector", ref = "v2.2.0")
devtools::install_github("ohdsi/OhdsiSharing", ref = "v0.1.3")
devtools::install_github("ohdsi/FeatureExtraction", ref = "v2.1.5")
devtools::install_github("ohdsi/CohortMethod", ref = "v3.0.2")
devtools::install_github("ohdsi/EmpiricalCalibration", ref = "v1.3.6")
devtools::install_github("ohdsi/MethodEvaluation", ref = "v0.3.1")
