# step 01: data processing (census)


## census data
# request census API key here: https://api.census.gov/data/key_signup.html

# install packages
install.packages("tidycensus")
install.packages("tmap")

# load libraries
library(tmap)
library(tidyverse)
library(tidycensus)
library(sf)

# load variables
data_acs5_2020 <- load_variables(2020, "acs5")
data_acs5_2015 <- load_variables(2015, "acs5")
data_acs1_2021 <- load_variables(2021, "acs1")

# 2020 decennial census variables
decennial_2020_vars <- load_variables(
  year = 2020, 
  "pl", 
  cache = TRUE
)# 2010 Decennial Census Variables

decennial_2010_vars <- load_variables(
  year = 2010, 
  "pl", 
  cache = TRUE
)
