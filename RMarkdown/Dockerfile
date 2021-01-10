# Building docker image to use R-Studio in a browser

FROM fernandovcb/rstudio

LABEL maintainer='fernandochafim@gmail.com'

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## add specific files
COPY /01_data/Gapminder_example.Rmd /01_data/Gapminder_example.Rmd

## copy working script
COPY /02_code/script2run.R /02_code/script2run.R

## run the script on running container
#CMD bash #use this command to check if the files are copied
CMD Rscript /02_code/script2run.R