#### Preamble ####
# Purpose: Pokemon
# Author: Che-Yu Wang
# Date:  March 26th 204
# Contact: Cheyu.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: non

# work set up 
library(tidyverse)

# Set seed for reproducibility
set.seed(853)

# List of Premier League teams (as of a recent season; update if needed)
premier_league_teams <- c(
  "Arsenal", "Aston Villa", "Brentford", "Brighton", "Chelsea", 
  "Crystal Palace", "Everton", "Fulham", "Leeds United", "Leicester City", 
  "Liverpool", "Manchester City", "Manchester United", "Newcastle United", 
  "Nottingham Forest", "Southampton", "Tottenham Hotspur", "West Ham United", 
  "Wolverhampton Wanderers"
)

# Simulate sports data
simulated_match_data <- tibble(
  match_date = rep(x = as.Date("2023-01-01") + c(0:364), times = 1),
  away_team = sample(premier_league_teams, 365, replace = TRUE),
  yellow_cards = rpois(n = 365, lambda = 3),  # Average 3 yellow cards per game
  full_time_away_goals = rpois(n = 365, lambda = 1)  # Average 1 goal per game
)

head(simulated_match_data)






