#### Preamble ####
# Purpose: Models MVP Index
# Author: Yan Mezhiborsky
# Date: 3 December 2024
# Contact: yan.mezhiborskyr@utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed



#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
nba_master <- read.csv("../data/02-analysis_data/nba_master.csv", stringsAsFactors = FALSE)
mvp_table <- read.csv("../data/02-analysis_data/mvp_table.csv", stringsAsFactors = FALSE)
merged_real_mvp <- read.csv("../data/02-analysis_data/Real_MVP_Datas.csv", stringsAsFactors = FALSE)

### Model data ####
# create a linear regression model
lm_model <- lm(MVP_index ~ PTS + AST + TRB + BLK + STL + WS, data = nba_master)

# View the summary of the model
summary(lm_model)

next_year_mvp_stats <- mvp_table %>%
  filter(Year == 2024) %>%  # Replace with the target year
  select(PTS, AST, TRB, BLK, STL, WS)

# Predict MVP_index for the next year's MVP
predicted_index_mvp_table <- predict(lm_model, newdata = next_year_mvp_stats)
print(paste("Predicted MVP Index (mvp_table):", predicted_index_mvp_table))

next_year_real_mvp_stats <- merged_real_mvp %>%
  filter(Year == 2024) %>%  # Replace with the target year
  select(PTS, AST, TRB, BLK, STL, WS)

# Predict MVP_index for the next year's MVP
predicted_index_real_mvp <- predict(lm_model, newdata = next_year_real_mvp_stats)

#### Save model ####

# Save the linear regression model to the models directory
saveRDS(lm_model, "../models/lm_model.rds")

# Predict MVP_index for the next year's MVP from mvp_table
predicted_index_mvp_table <- predict(lm_model, newdata = next_year_mvp_stats)

# Save the predictions for mvp_table to the models directory
saveRDS(predicted_index_mvp_table, "../models/predicted_index_mvp_table.rds")

# Predict MVP_index for the next year's MVP from merged_real_mvp
predicted_index_real_mvp <- predict(lm_model, newdata = next_year_real_mvp_stats)

# Save the predictions for merged_real_mvp to the models directory
saveRDS(predicted_index_real_mvp, "../models/predicted_index_real_mvp.rds")


