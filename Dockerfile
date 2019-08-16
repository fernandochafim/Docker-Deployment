# Building docker image to use R-Studio in a browser

FROM rocker/verse:latest

LABEL maintainer='fernandochafim@gmail.com'

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## copy files
COPY 02_code/install_packages.R /install_packages.R

## add specific files
COPY /01_data/Gapminder_example.Rmd /01_data/Gapminder_example.Rmd

## copy working script
COPY /02_code/script2run.R /02_code/script2run.R

## install packages 
RUN Rscript /install_packages.R

## run the script on running container
#CMD bash #use this command to check if the files are copied
CMD Rscript /02_code/script2run.R


