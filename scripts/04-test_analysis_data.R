#### Preamble ####
# Purpose: Testing analysis data
# Author: Yan Mezhiborsky
# Date: 3 December 2024
# Contact: yan.mezhiborskyr@utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed



#### Workspace setup ####
library(tidyverse)


mvp_table_path <- "../data/02-analysis_data/mvp_table.csv"
nba_master_path <- "../data/02-analysis_data/nba_master.csv"
real_mvp_datas_path <- "../data/02-analysis_data/Real_MVP_Datas.csv"


#### Test data ####
# Function to test dataset structure and values
test_dataset <- function(dataset, name, required_columns) {
  missing_columns <- setdiff(required_columns, colnames(dataset))
  
  if (length(missing_columns) > 0) {
    stop(paste("Dataset", name, "is missing columns:", paste(missing_columns, collapse = ", ")))
  }
  
  if (any(is.na(dataset))) {
    cat(paste("Warning:", name, "contains missing values.\n"))
  }
  
  if (any(duplicated(dataset$Player))) {
    cat(paste("Warning:", name, "contains duplicate Player entries.\n"))
  }
  
  cat(paste("Dataset", name, "passed structural checks.\n"))
}

# Test `mvp_table`
test_dataset(
  mvp_table, 
  "mvp_table", 
  c("Year", "Player", "MVP_index", "PTS", "AST", "TRB", "BLK", "STL", "WS")
)

# Test `nba_master`
test_dataset(
  nba_master, 
  "nba_master", 
  c("Year", "Player", "PTS", "AST", "TRB", "BLK", "STL", "WS", "MVP_index")
)

# Test `Real_MVP_Datas`
test_dataset(
  Real_MVP_Datas, 
  "Real_MVP_Datas", 
  c("Season", "Player", "Age", "Year")
)

# Additional checks
if (!all(mvp_table$Year %in% 1986:2024)) {
  stop("mvp_table contains invalid years.")
}

if (!all(nba_master$Year %in% 1986:2024)) {
  stop("nba_master contains invalid years.")
}

if (!all(Real_MVP_Datas$Year %in% 1986:2024)) {
  stop("Real_MVP_Datas contains invalid years.")
}

if (any(nba_master$MVP_index < 0)) {
  stop("nba_master contains negative MVP_index values.")
}