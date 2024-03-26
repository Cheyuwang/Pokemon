#### Preamble ####
# Purpose: Pokemon
# Author: Che-Yu Wang
# Date:  March 26th 204
# Contact: Cheyu.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: non



#### Workspace setup ####

library(tidyverse)

#### Simulate data ####
data <-
  tibble(
    level = rnorm(n = 1000, mean = 100, sd = 10) |> floor(),
    weakness = sample(x = c("fire", "not fire"), size = 1000, replace = FALSE)
  )



