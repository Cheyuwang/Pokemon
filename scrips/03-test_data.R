#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)


# Assuming the correct file extension is .csv (check the actual file extension)
# Ensure that the file path string is correctly closed with a quotation mark
football <- read_csv("data/raw_data/primer.league2024.csv")

# Update these names based on the output from print(colnames(football))
test_yellow_cards <- class(football$AY) == "integer"  # Updated column name
test_away_goals <- class(football$FTAG) == "integer"  # Updated column name
test_match_date <- class(football$Date) == "Date"  # Updated column name
test_home_team <- class(football$HomeTeam) == "character"  # Updated column name
test_away_team <- class(football$AwayTeam) == "character"  # Updated column name

# Output the results of the tests to the console
results <- list(
  Test_Yellow_Cards = test_yellow_cards,
  Test_Away_Goals = test_away_goals,
  Test_Match_Date = test_match_date,
  Test_Home_Team = test_home_team,
  Test_Away_Team = test_away_team
)
print(results)




