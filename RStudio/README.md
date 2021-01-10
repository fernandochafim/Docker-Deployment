# docker-r-studio

## Description 

To allow usage of R-Studio in a portable way using Docker Container

## Procedure

#### Build Container

`docker login` - to authenticate
`docker build -t fernandovcb/RStudio .` - to run

### Run Container

`docker run --rm -p 8787:8787 -e USER=myself -e PASSWORD=guest -v //C:/Users/ferna/Desktop/trashc:/rstudioshared://home/rstudio/kitematic fernandovcb/docker-r-studio`

# Run with Rmarkdown output
`docker run -it --rm -v 8787:8787 -e USER=myself -e PASSWORD=guest -v //C:/Users/ferna/Desktop/trashc:/rstudioshared://home/rstudio/kitematic fernandovcb/docker-r-studio`

### Stop Container

`Ctrl + C`

`docker stop CONTAINER_ID`

### Push to Docker Hub

`docker push fernandovcb/docker-r-studio`

### Save locally

`docker save fernandovcb/docker-r-studio > docker-r-studio.tar`

### Load from local file

`docker load --input docker-r-studio.tar`

### Load from Docker Hub

`docker pull fernandovcb/docker-r-studio`

### Check if Docker is running from another terminal

`docker ps` #copy the ID

`docker exec -it CONTAINERID bash`

Now you are in the Bash. To leave only execute `exit`

### Save Image

After make some changes (install something)

`docker ps` #copy the ID

`docker commit -m "added gapminder" 25cbcc1bcc8a fernandovcb/docker-r-studio`

### Push Changes to Docker Hub

`docker push fernandovcb/docker-r-studio`

Save with tags (different versions): 

`docker tag fernandovcb/docker-r-studio fernandovcb/docker-r-studio:version0.9`

`docker images`

`docker push fernandovcb/docker-r-studio:version0.9`

### Delete locally

`docker images`

`docker rmi --force [IMAGE ID]`