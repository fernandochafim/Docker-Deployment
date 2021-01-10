# Executable file to start container with RStudio from Windows with Docker-WSL2

start chrome http://192.168.99.100:8787

wsl docker run --rm -p 8787:8787 -e USER=myself -e PASSWORD=guest fernandovcb/rstudio