# docker-r-plumber

# Description

This repository was created for educational purposes. Present image will generate the Plumber API which will broadcast information via the Docker network. Another container linked to the same network will be able to read this information.

# Branch dev_step2

This branch is created to illustrate further steps of development - creating a Docker Image

# Development Steps

1. Create Dockerfile eventually by re-using existing template

1.1. Note the ENTRYPOINT or the command which will be executed once container starts is specified as `ENTRYPOINT ["Rscript", "/02_code/script2run.R"]`

1.2. Check the R code that will start broadcasting API: 

`library(plumber)`
`r <- plumb("/02_code/plumber.R")`
`r$run(port=8797, host="0.0.0.0")`

2. Build Docker Image
3. Optionally push this image to Docker Hub
4. Run docker container with the script Run_Plumber. Note that at this stage it will not be possible to test our container. See the next branch dev_step3 

