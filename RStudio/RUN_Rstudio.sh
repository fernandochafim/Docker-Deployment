#!/bin/bash

set -e
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    cmd.exe /C start chrome http://localhost:8787
else
    start chrome http://192.168.99.100:8787
fi

docker run --rm -p 8787:8787 -e USER=myself -e PASSWORD=guest -v /mnt/d/GITHUB\ PROJECTS/Docker-Deployment/RStudio/Code:/home/myself/rstudio fernandovcb/rstudio