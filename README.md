# docker-r-studio

## Description 

To allow usage of R-Studio in a portable way using Docker Container

## Procedure

#### Build Container

`docker login` - to authenticate
`docker build -t fernandovcb/docker-r-studio .` - to run

### Run Container

`docker run --rm -p 8787:8787 -e USER=myself -e PASSWORD=guest -v //C:/Users/ferna/Desktop/trashc:/rstudioshared://ho
me/rstudio/kitematic fernandovcb/docker-r-studio`

### Stop Container

`Ctrl + C`

`docker stop CONTAINER_ID`

### Push to Docker Hub

`docker push fernandovcb/docker-r-studio`

### Save locally

`docker save fernandovcb/docker-r-studio > docker-r-studio.tar`

