#### Preamble ####
# Purpose: cleaning data
# Author: Che-Yu Wang
# Date:  March 26th 204
# Contact: Cheyu.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: non

#### Workspace setup ####
install.packages(rstanarm)
library(tidyverse)
library(rstanarm)

football <- read.csv("data/raw_data/primer.league2024.csv")

#### Clean data fit model ####
football |>
  group_by(AwayTeam) |>
  summarise(ave = mean(FTAG),
            var = var(FTAG))

football_poisson <-
  stan_glm(
    FTAG ~ HY,
    data = football,
    family = poisson(link = "log"),
    seed = 853
  )

football_neg_binomial <-
  stan_glm(
    FTAG ~ HY,
    data = football,
    family = neg_binomial_2(link = "log"),
    seed = 853
  )

saveRDS(
  football_poisson,
  file = "football_possion.rsd"
)




