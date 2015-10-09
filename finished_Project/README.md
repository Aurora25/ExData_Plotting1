---
title: "README.md"
author: "Sanja Stegerer"
date: "Thursday, October 08, 2015"
output: html_document
---
#README

### The files in this repository subfolder

This repository contains the R Scripts <br />

* plot1.R
* plot2.R
* plot3.R
* plot4.R

and<br />

* read_in_data.R. 

The "plot#.R" Scripts produce the png-files<br />

* plot1.png
* plot2.png
* plot3.png
* plot4.png

respectively. <br /> 
If your working directory in R is set to the one, which contains all the "plot#.R"-files, use the 

```{r}
source("plot1.R")
```
to run the "plot1.R" file and replace the 1 with a 2,3 or 4 in order to run the other 3 files. <br />
Before you run "plot#.R" files please read the dependencies section and follow the instructions to make sure you have all the required files for the "plot#.R"-files to work properly. 

### Dependencies

It is necessary to save the "read_in_data.R" with the "plot#.R" scripts in one folder in order for the "plot#.R" Scripts to work, as they all source "read_in_data.R". <br />

The data can be downloaded with the following link

<https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip>.

Please unzip the downloaded zip-file into the folder of the "plot#.R"" files. It should now contain the folder "exdata-data-household_power_consumption", which will contain the datafile. <br />
The "read_in_data.R" script will now be able to load the data from the datafile.  