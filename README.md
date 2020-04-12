# docker-r-plumber

# Description

This repository was created for educational purposes. Present image will generate the Plumber API which will broadcast information via the Docker network. Another container linked to the same network will be able to read this information.

# Usage for demonstration

## Start Demo

Launch the executable file belonging to this repo `Run_Plumber` this starts:

* Container with R Plumber API
* Container Network
* 2 Containers with R Studio IDE

## End User Space (Shiny App is not in it's own container yet)

Purpose: write all relevant logic relevant to the End User e.g. deploy the GUI App

Access: Safari browser http://localhost:8787

## Developer Space

Purpose: write all relevant logic relevant e.g. prepare and test the API

Access: Chrome browser http://localhost:8797

## Published API on it's own container see vladdsm/docker-r-plumber

Purpose: deploy Plumber API 

Access: via REST API GET calls from the Shiny Web App...

## End Demo:

Launch the executable file `Stop_Plumber` (this will stop all the containers as well as remove the network)

# Connecting Containers [Testing]

This chapter is dedicated to note down the procedure that helps to consume API.

* from Terminal we execute command to understand actors in the network `my-net` `docker network inspect my-net`
* resulting output is the ip addresses of the containers:
API - 172.23.0.4
Prod - 172.23.0.3
Dev - 172.23.0.2
Gateway - 172.23.0.1
Subnet - 172.23.0.0
* ping API from Prod (RStudio Terminal) - OK
* execute API GET request:
-- URL: 172.23.0.4:8797
-- Endpoint: hash_unit
* result - OK

The IP address of the network [172.xx.0.y] is always increasing. Every time we will restart docker engine xx value will start from 18... so to insure the right url will be used for GET request we can use the network name which was specified as 'API'. URL for the GET request will be:
`url <- "API:8797/[endpoint]"`





