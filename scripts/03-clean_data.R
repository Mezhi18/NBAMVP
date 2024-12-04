#### Preamble ####
# Purpose: Cleans the raw NBa data
# Author: Yan Mezhiborsky
# Date: 3 December 2024
# Contact: yan.mezhiborskyr@utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed



#### Workspace setup ####
library(tidyverse)

#### Clean data ####
# Years range
years <- 1986:2024

# Normalize columns and calculate MVP index with WS
for (year in years) {
  dataset_name <- paste0("NBA", year)
  dataset <- get(dataset_name)
  
  if (all(c("PTS", "AST", "TRB", "STL", "BLK", "WS") %in% colnames(dataset))) {
    averages <- colMeans(dataset[c("PTS", "AST", "TRB", "STL", "BLK", "WS")], na.rm = TRUE)
    
    dataset$avg_PTS <- averages["PTS"]
    dataset$avg_AST <- averages["AST"]
    dataset$avg_TRB <- averages["TRB"]
    dataset$avg_STL <- averages["STL"]
    dataset$avg_BLK <- averages["BLK"]
    dataset$avg_WS <- averages["WS"]
    
    dataset$norm_PTS <- dataset$PTS / dataset$avg_PTS
    dataset$norm_AST <- dataset$AST / dataset$avg_AST
    dataset$norm_TRB <- dataset$TRB / dataset$avg_TRB
    dataset$norm_STL <- dataset$STL / dataset$avg_STL
    dataset$norm_BLK <- dataset$BLK / dataset$avg_BLK
    dataset$norm_WS <- dataset$WS / dataset$avg_WS
    
    dataset$MVP_index <- 0.8 * dataset$norm_PTS +
      0.25 * dataset$norm_AST +
      0.25 * dataset$norm_TRB +
      0.1 * dataset$norm_BLK +
      0.1 * dataset$norm_STL +
      0.15 * dataset$norm_WS
    
    assign(dataset_name, dataset)
  } else {
    stop(paste0("One or more required columns (PTS, AST, TRB, STL, BLK, WS) are missing in dataset for year ", year))
  }
}

# Create a table of the player with the highest MVP index for each year
mvp_table <- data.frame(Year = integer(), Player = character(), MVP_index = numeric(), 
                        PTS = numeric(), AST = numeric(), TRB = numeric(), 
                        BLK = numeric(), STL = numeric(), WS = numeric(), 
                        stringsAsFactors = FALSE)

# Iterate over each year to find the top player
for (year in years) {
  dataset_name <- paste0("NBA", year)
  dataset <- get(dataset_name)
  
  if ("MVP_index" %in% colnames(dataset)) {
    max_row <- dataset[which.max(dataset$MVP_index), ]
    
    mvp_entry <- data.frame(
      Year = year, 
      Player = max_row$Player, 
      MVP_index = max_row$MVP_index,
      PTS = max_row$PTS,
      AST = max_row$AST,
      TRB = max_row$TRB,
      BLK = max_row$BLK,
      STL = max_row$STL,
      WS = max_row$WS,
      stringsAsFactors = FALSE
    )
    
    mvp_table <- rbind(mvp_table, mvp_entry)
  } else {
    stop(paste0("MVP_index column is missing in dataset for year ", year))
  }
}

write.csv(mvp_table, "../data/02-analysis_data/mvp_table.csv", row.names = FALSE)

nba_list <- list()

for (year in years) {
  dataset_name <- paste0("NBA", year)
  dataset <- get(dataset_name)
  dataset$Year <- year
  nba_list[[as.character(year)]] <- dataset
}

nba_master <- do.call(rbind, nba_list)
write.csv(nba_master, "../data/02-analysis_data/nba_master.csv", row.names = FALSE)

merged_real_mvp <- merge(
  Real_MVP_Data, 
  nba_master[, c("Player", "Age", "MVP_index")],  # Select only relevant columns from nba_master
  by = c("Player", "Age"), 
  all.x = TRUE
)

merged_real_mvp <- merged_real_mvp %>%
  mutate(
    Year = case_when(
      grepl("^\\d{4}-\\d{2}$", Season) ~ as.numeric(substr(Season, 1, 4)) + 1,
      grepl("^[a-zA-Z]{3}-\\d{2}$", Season) ~ as.numeric(paste0("20", substr(Season, 5, 6))) + 1,
      TRUE ~ NA_real_
    )
  )

# Convert Year column to numeric
merged_real_mvp$Year <- as.numeric(merged_real_mvp$Year)

Real_MVP_Datas <- Real_MVP_Data[-c(1, nrow(Real_MVP_Data)), ]

#### Save data ####

write.csv(mvp_table, "../data/02-analysis_data/mvp_table.csv", row.names = FALSE)
write.csv(nba_master, "../data/02-analysis_data/nba_master.csv", row.names = FALSE)
write.csv(Real_MVP_Datas, "../data/02-analysis_data/Real_MVP_Datas.csv", row.names = FALSE)
