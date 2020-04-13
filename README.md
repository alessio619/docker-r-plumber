# docker-r-plumber

# Description

This repository was created for educational purposes. Present image will generate the Plumber API which will broadcast information via the Docker network. Another container linked to the same network will be able to read this information.

# Branch dev_step4

Test connectivity using docker network and 2 development environments

# Development Steps

1. Adding one more container running R-Studio!

2. Launching all containers

* Container with R Plumber API
* Container Network
* 2 Containers with R Studio IDE

3. Inspecting the network to find IP addresses

3.1. Execute in the Terminal: `docker network inspect my-net`, note ip addresses

* resulting output is the ip addresses of the containers:
API - 172.23.0.4
Prod - 172.23.0.3
Dev - 172.23.0.2
Gateway - 172.23.0.1
Subnet - 172.23.0.0

Note that these IP addresses are not static this is why we are using aliases e.g. `API`, `Dev` or `Prod` to specify names of containers in the network

3.1. Launch R-Studio with Safari browser http://localhost:8787
3.2. Launch R-Studio with Chrome browser http://localhost:8797
3.3. Ping network

* ping API from Prod (RStudio Terminal) e.g. `ping 172.23.0.1` or `ping API`...

4. Stop containers and remove networks





