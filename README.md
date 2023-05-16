# census-mapping-workshop
Sample code and instructions for an introductory workshop on generating maps using census data in RStudio

# Setup instructions

* Download and Install R: https://www.r-project.org/

* Download and Install RStudio Desktop: https://posit.co/download/rstudio-desktop/

* Open RStudio

* Go to File > New Project

* Select Version Control

* Select Git

* Enter the following Repository URL: https://posit.co/download/rstudio-desktop/

* Select a location and name for the folder to contain project files

* In the console, run the following code: install.packages(c("tidyverse", "sf", "leaflet", "ggplot2", "RColorBrewer"))

# Case studies

## Rental data

This appears in the folder ./case_studies/rental_data and demonstrates how to create a map displaying some rental-related census data. 

Before running the files, run the following command in the console: install.packages(c("tidyverse", "curl", "sf"))

The files are:

* 0_prepare_data.Rmd: This downloads data from the Statistics Canada website, and prepares it for later use. The preparation largely consists of reducing the data to a reasonable size by filtering out data not relevant to the case study. This notebook is time-consuming to run due to the size the raw data files.
