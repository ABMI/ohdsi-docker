install.packages("reticulate")
install.packages("tensorflow")
install.packages("keras")

#tensorflow::install_tensorflow()
#keras::install_keras()

devtools::install_github("ohdsi/SqlRender", ref = "v1.5.2")
devtools::install_github("ohdsi/DatabaseConnector", ref = "v2.2.0")
devtools::install_github("ohdsi/OhdsiSharing", ref = "v0.1.3")
devtools::install_github("ohdsi/FeatureExtraction", ref = "v2.1.5")
devtools::install_github("ohdsi/OhdsiRTools", ref= "v1.7.0")
devtools::install_github("ohdsi/BigKnn")
#devtools::install_github("ohdsi/PatientLevelPrediction", ref="v3.0.0")
