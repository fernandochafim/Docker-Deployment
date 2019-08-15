# Executable file to start container with RStudio

start chrome http://192.168.99.100:8787

docker run --rm -p 8787:8787 -e USER=myself -e PASSWORD=guest fernandovcb/docker-r-studio
