# docker-r-studio

Repository Following the folder structure defined by Team Data Science Process (TDSP) is an agile, iterative, data science methodology to improve collaboration and team learning.

## Description 

To allow usage of R-Studio in a portable way using Docker Container

## Procedure

#### Build Container

- to authenticate
```
docker login
``` 

- to run

```
docker build -t fernandovcb/rstudio .
```

### Run Container
##### --rm (we will remove the container after usage)
##### -p 8787:8787 (port to access)
##### -e USER=<user_name> -e PASSWORD=<user_password>
##### -v /mnt/d/GITHUB\ PROJECTS/Docker-Deployment/RStudio/Code:/home/myself/rstudio (Map Computer and contained file system)
```
docker run --rm -p 8787:8787 -e USER=myself -e PASSWORD=guest -v /mnt/d/GITHUB\ PROJECTS/Docker-Deployment/RStudio/Code:/home/myself/rstudio fernandovcb/rstudio
```

### Stop Container

`Ctrl + C`

```
docker stop CONTAINER_ID
```

### Push to Docker Hub

```
docker push fernandovcb/rstudio
```

### Save locally

```
docker save fernandovcb/rstudio > docker_rstudio.tar
```

### Load from local file

```
docker load --input docker_rstudio.tar
```

### Load from Docker Hub

```
docker pull fernandovcb/rstudio
```

### Check if Docker is running from another terminal

copy the ID

```
docker ps
``` 

```
docker exec -it CONTAINERID bash
```

Now you are in the Bash. To leave only execute `exit`

### Save Image

After make some changes (install something) in a running container

```
docker ps
``` 
#copy the ID

```
docker commit -m "added gapminder" [ID] fernandovcb/rstudio
```

### Push Changes to Docker Hub

```
docker push fernandovcb/rstudio
```

Save with tags (different versions): 

```
docker tag fernandovcb/rstudio fernandovcb/rstudio:version0.9
```

```
docker images
```

```
docker push fernandovcb/rstudio:version0.9
```

### Delete locally

```
docker images
```

```
docker rmi --force [IMAGE ID]
```

### Check Running container

Get ID
```
docker ps
``` 

```
docker exec -it [ID] bash
```

### Automatic Builds: Link to github account

