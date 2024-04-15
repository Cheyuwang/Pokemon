#### Preamble ####
# Purpose: Downloads and saves the data from primer league 
# Author: Che-Yu Wang 
# Date: 11 February 2023 
# Contact: cheyu.wang@mail.utoronto.ca 


#### Workspace setup ####
library(tidyverse)        # For data manipulation and writing CSV files
library(janitor)          # For cleaning data


#### Save ####
# Saving the acquired dataset to a local CSV file in a raw data folder
## The 2023-24 seasons Premier League data was found at: https://www.football-data.co.uk/englandm.php 


#### Save ####
# Saving the acquired dataset to a local CSV file in a raw data folder
write_csv(x = primer_league2024, 
          file = "data/raw_data/primer.league2024.csv")


         
