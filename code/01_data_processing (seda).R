# step 01: data processing (seda)

# load packages and libraries
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

# data source: https://edopportunity.org/get-the-data/seda-archive-downloads/

# SEDA2023_state_poolsub_YS_updated_20240205 	Pooled 	YS
seda2023_state_poolsub_YS <- read.csv("https://stacks.stanford.edu/file/druid:xt779fj2637/seda2023_admindist_poolsub_gys_updated_20240205.csv")
seda2023_state_poolsub_YS
df23 <- seda2023_state_poolsub_YS
dim(df23)
glimpse(df23)
head(df23)
tail(df23)

# subset data
nc <- select(df23$stateabb == "NC")
  
# SEDA2022_ADMINDIST
seda2022 <- read.csv("data/seda2022_admindist_poolsub_gys_2.0.csv")
View(seda2022)

