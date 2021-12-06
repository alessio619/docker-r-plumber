# Executable file to start container with R Plumber API and RStudio
# This script is used to enable both R-Studio Environments

# our ecosystem will require connectivity among them
# see https://stackoverflow.com/a/27583220

# establish the network
docker network create -d bridge my-net

# Environment to develop [e.g. Open with Safari browser]
docker run -d --rm --network=my-net --net-alias=Dev -p 8787:8787 -e USER=myself -e PASSWORD=guest -v A:/docker-r-plumber:/home/myself/r-studio/docker-r-plumber -v A:/shiny-merkle-tree:/home/myself/r-studio/shiny-merkle-tree --name Dev alessio619/docker-r-studio

# Environment to test [e.g. Open with Chrome browser]
docker run -d --rm --network=my-net --net-alias=Prod -p 8797:8787 -e USER=myself -e PASSWORD=guest -v A:/docker-r-plumber:/home/myself/r-studio/docker-r-plumber -v A:/shiny-merkle-tree:/home/myself/r-studio/shiny-merkle-tree --name Prod alessio619/docker-r-studio

# API publisher
docker run -d --rm --network=my-net --net-alias=API -p 8777:8787 --name API alessio619/docker-r-plumber