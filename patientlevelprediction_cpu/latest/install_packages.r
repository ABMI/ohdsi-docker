options(repos=structure(c(CRAN="http://cloud.r-project.org/")))

install.packages("reticulate")
install.packages("tensorflow")
install.packages("keras")

#tensorflow::install_tensorflow()
#keras::install_keras()

install.packages(c('xml2', 'devtools'), dependencies = T)
#install ohdsi tools
devtools::install_github("ohdsi/OhdsiRTools")
devtools::install_github("ohdsi/SqlRender")
devtools::install_github("ohdsi/DatabaseConnector")
devtools::install_github("ohdsi/OhdsiSharing")
devtools::install_github("ohdsi/FeatureExtraction")
devtools::install_github("ohdsi/OhdsiRTools")
devtools::install_github("ohdsi/BigKnn")

#install pythonInR and PLP packages
Sys.setenv('USESPECIALPYTHONVERSION'='python3.5')
install.packages("PythonInR")
devtools::install_github("ohdsi/PatientLevelPrediction", ref="v3.0.0")
