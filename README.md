# OHDSI-Docker image

Docker images for OHDSI R tools
# HOW TO USE

```
docker run --name plp -e USER=user -e PASSWORD=password1 -d -p 8787:8787 chandryou/cohortmethod:3.0.2

docker run --name plp -e USER=user -e PASSWORD=password1 -d -p 8787:8787 chandryou/patientlevelprediction_cpu:3.0.0
```

consider to increase the upper limit of file open
--ulimit nofile= 10000000:10000000
