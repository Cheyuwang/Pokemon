#### Preamble ####
# Purpose: Models... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]



#### Workspace setup ####
library(tidyverse)  # for data manipulation and visualization
library(readr)      # for reading CSV data
library(here)       # for easier path management
library(Rcpp)       # for seamless R and C++ integration
library(rstanarm)   # for Bayesian modeling
library(dplyr)      # for data manipulation


#### Read data ####
analysis_data <- read_csv("data/raw_data/primer.league2024.csv")
#### Prepare data for modeling ####
football_sample <- 
  football |>
  slice_sample(n = 853)  # Randomly sample 1000 observations for modeling
### Model data ####

football <- stan_glm(
  formula = FTAG ~ AY,
  data = football_sample,
  family = poisson(link = "log"),  # Suitable for count data
  prior = normal(location = 0, scale = 2.5),  # Priors based on domain knowledge
  prior_intercept = normal(location = 0, scale = 2.5),
  prior_aux = exponential(rate = 1),  # Auxiliary prior for dispersion
  seed = 853)  # For reproducibility


#### Save model ####
saveRDS(football, file = "models/football.rds") 



