# docker-r-plumber

# Description

This repository was created for educational purposes. Present image will generate the Plumber API which will broadcast information via the Docker network. Another container linked to the same network will be able to read this information.

# Branch dev_step3

Creating docker network 

# Development Steps

1. Add command to the script `docker network create my-net` to add a network 'my-net'

2. Specify this network in every docker container that will use this network with `--network=my-net`

3. Add option `--net-alias=NAME_CONTAINER` to every container

4. Add option `--name NAME_CONTAINER` to specify the name of every container

5. Add option `-d` to specify that containers will run in detached mode

6. Launch everything, by running executable `Run_Plumber`. This will start:

* Container with R Plumber API
* Container Network
* Containers with R Studio IDE

7. Access Developer Space with Chrome browser http://localhost:8797

8. Stop everything by executing script `Stop_Plumber`. This will stop active containers and remove the network:

`docker container stop Dev API`
`docker network rm my-net`