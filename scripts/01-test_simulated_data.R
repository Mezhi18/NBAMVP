#### Preamble ####
# Purpose: Tests the structure of MVP Data
# Author: Yan Mezhiborsky
# Date: 3 December 2024
# Contact: yan.mezhiborskyr@utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed



#### Workspace setup ####
library(tidyverse)
set.seed(618)


#### Workspace setup ####
library(tidyverse)




#### Test data ####

test_dataset <- function(dataset, year) {
  required_columns <- c("Player", "Age", "PTS", "AST", "TRB", "STL", "BLK", "WS", "MVP_index")
  missing_columns <- setdiff(required_columns, colnames(dataset))
  if (length(missing_columns) > 0) {
    stop(paste("Dataset for year", year, "is missing columns:", paste(missing_columns, collapse = ", ")))
  }
  if (any(is.na(dataset$MVP_index))) {
    stop(paste("Dataset for year", year, "contains missing values in MVP_index"))
  }
  if (any(duplicated(dataset$Player))) {
    stop(paste("Dataset for year", year, "contains duplicate player entries"))
  }
  if (any(dataset$MVP_index < 0)) {
    stop(paste("Dataset for year", year, "contains negative MVP_index values"))
  }
  return(TRUE)
}

for (year in 1986:2024) {
  dataset_name <- paste0("NBA", year)
  dataset <- get(dataset_name)
  test_dataset(dataset, year)
}

if (!all(c("Year", "Player", "PTS", "AST", "TRB", "STL", "BLK", "WS", "MVP_index") %in% colnames(nba_master))) {
  stop("nba_master dataset is missing required columns")
}

if (any(is.na(nba_master))) {
  stop("nba_master dataset contains missing values")
}

if (!all(merged_real_mvp$Year %in% 1986:2025)) {
  stop("merged_real_mvp contains invalid years")
}

if (any(is.na(merged_real_mvp$MVP_index))) {
  warning("merged_real_mvp contains missing values in MVP_index")
}
