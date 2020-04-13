# docker-r-plumber

# Description

This repository was created for educational purposes. Present image will generate the Plumber API which will broadcast information via the Docker network. Another container linked to the same network will be able to read this information.

# Branch dev_step1

This branch dev_step1 is describing steps to develop API code using R-Studio in the docker container

## Development Steps

1. Create a new folder e.g. docker-r-plumber
2. Add a version control to this folder
3. Copy and Paste a script `Run_RStudio` to this folder. See: https://github.com/vladdsm/docker-r-studio
4. Edit this script by Mapping newly created folder to RStudio environment, e.g.:

We use mapping as follows: `-v [LocalFolder]:[ContainerFolder]`. This is current example: `-v /Users/vladdsm/Documents/GitHub/docker-r-plumber:/home/myself/r-studio/docker-r-plumber`

5. Launch docker container with R Studio by 2 clicking to the script Run_RStudio
6. Access the IDE using your browser with http://localhost:8787
7. Develop the API code, create your script in the same folder e.g. /docker-r-plumber/02_code
8. Test with Swagger
9. Save and commit your work to the version control
10. Stop container with R-Studio by pressing CTRL+C in the active Terminal window
