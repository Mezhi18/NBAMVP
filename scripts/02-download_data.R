#### Preamble ####
# Purpose: Downloads and saves the data from MVP Data
# Author: Yan Mezhiborsky
# Date: 3 December 2024
# Contact: yan.mezhiborskyr@utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed


#### Workspace setup ####

library(tidyverse)


#### Download data ####
# 1986
NBA1986 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1986.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1986[2, ]))
NBA1986 <- NBA1986[-c(1, 2), ]
colnames(NBA1986) <- new_col_names
NBA1986[] <- lapply(NBA1986, type.convert, as.is = TRUE)

# 1987
NBA1987 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1987.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1987[2, ]))
NBA1987 <- NBA1987[-c(1, 2), ]
colnames(NBA1987) <- new_col_names
NBA1987[] <- lapply(NBA1987, type.convert, as.is = TRUE)

# 1988
NBA1988 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1988.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1988[2, ]))
NBA1988 <- NBA1988[-c(1, 2), ]
colnames(NBA1988) <- new_col_names
NBA1988[] <- lapply(NBA1988, type.convert, as.is = TRUE)

# 1989
NBA1989 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1989.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1989[2, ]))
NBA1989 <- NBA1989[-c(1, 2), ]
colnames(NBA1989) <- new_col_names
NBA1989[] <- lapply(NBA1989, type.convert, as.is = TRUE)

# 1990
NBA1990 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1990.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1990[2, ]))
NBA1990 <- NBA1990[-c(1, 2), ]
colnames(NBA1990) <- new_col_names
NBA1990[] <- lapply(NBA1990, type.convert, as.is = TRUE)

# 1991
NBA1991 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1991.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1991[2, ]))
NBA1991 <- NBA1991[-c(1, 2), ]
colnames(NBA1991) <- new_col_names
NBA1991[] <- lapply(NBA1991, type.convert, as.is = TRUE)

# 1992
NBA1992 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1992.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1992[2, ]))
NBA1992 <- NBA1992[-c(1, 2), ]
colnames(NBA1992) <- new_col_names
NBA1992[] <- lapply(NBA1992, type.convert, as.is = TRUE)

# 1993
NBA1993 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1993.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1993[2, ]))
NBA1993 <- NBA1993[-c(1, 2), ]
colnames(NBA1993) <- new_col_names
NBA1993[] <- lapply(NBA1993, type.convert, as.is = TRUE)

# 1994
NBA1994 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1994.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1994[2, ]))
NBA1994 <- NBA1994[-c(1, 2), ]
colnames(NBA1994) <- new_col_names
NBA1994[] <- lapply(NBA1994, type.convert, as.is = TRUE)

# 1995
NBA1995 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1995.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1995[2, ]))
NBA1995 <- NBA1995[-c(1, 2), ]
colnames(NBA1995) <- new_col_names
NBA1995[] <- lapply(NBA1995, type.convert, as.is = TRUE)

# 1996
NBA1996 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1996.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1996[2, ]))
NBA1996 <- NBA1996[-c(1, 2), ]
colnames(NBA1996) <- new_col_names
NBA1996[] <- lapply(NBA1996, type.convert, as.is = TRUE)

# 1997
NBA1997 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1997.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1997[2, ]))
NBA1997 <- NBA1997[-c(1, 2), ]
colnames(NBA1997) <- new_col_names
NBA1997[] <- lapply(NBA1997, type.convert, as.is = TRUE)

# 1998
NBA1998 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1998.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1998[2, ]))
NBA1998 <- NBA1998[-c(1, 2), ]
colnames(NBA1998) <- new_col_names
NBA1998[] <- lapply(NBA1998, type.convert, as.is = TRUE)

# 1999
NBA1999 <- read.csv("../data/01-raw_data/All NBA/AllNBA_1999.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA1999[2, ]))
NBA1999 <- NBA1999[-c(1, 2), ]
colnames(NBA1999) <- new_col_names
NBA1999[] <- lapply(NBA1999, type.convert, as.is = TRUE)

# 2000
NBA2000 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2000.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2000[2, ]))
NBA2000 <- NBA2000[-c(1, 2), ]
colnames(NBA2000) <- new_col_names
NBA2000[] <- lapply(NBA2000, type.convert, as.is = TRUE)

# 2001
NBA2001 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2001.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2001[2, ]))
NBA2001 <- NBA2001[-c(1, 2), ]
colnames(NBA2001) <- new_col_names
NBA2001[] <- lapply(NBA2001, type.convert, as.is = TRUE)

# 2002
NBA2002 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2002.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2002[2, ]))
NBA2002 <- NBA2002[-c(1, 2), ]
colnames(NBA2002) <- new_col_names
NBA2002[] <- lapply(NBA2002, type.convert, as.is = TRUE)

# 2003
NBA2003 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2003.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2003[2, ]))
NBA2003 <- NBA2003[-c(1, 2), ]
colnames(NBA2003) <- new_col_names
NBA2003[] <- lapply(NBA2003, type.convert, as.is = TRUE)

# 2004
NBA2004 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2004.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2004[2, ]))
NBA2004 <- NBA2004[-c(1, 2), ]
colnames(NBA2004) <- new_col_names
NBA2004[] <- lapply(NBA2004, type.convert, as.is = TRUE)

# 2005
NBA2005 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2005.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2005[2, ]))
NBA2005 <- NBA2005[-c(1, 2), ]
colnames(NBA2005) <- new_col_names
NBA2005[] <- lapply(NBA2005, type.convert, as.is = TRUE)

# 2006
NBA2006 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2006.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2006[2, ]))
NBA2006 <- NBA2006[-c(1, 2), ]
colnames(NBA2006) <- new_col_names
NBA2006[] <- lapply(NBA2006, type.convert, as.is = TRUE)

# 2007
NBA2007 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2007.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2007[2, ]))
NBA2007 <- NBA2007[-c(1, 2), ]
colnames(NBA2007) <- new_col_names
NBA2007[] <- lapply(NBA2007, type.convert, as.is = TRUE)

# 2008
NBA2008 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2008.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2008[2, ]))
NBA2008 <- NBA2008[-c(1, 2), ]
colnames(NBA2008) <- new_col_names
NBA2008[] <- lapply(NBA2008, type.convert, as.is = TRUE)

# 2009
NBA2009 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2009.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2009[2, ]))
NBA2009 <- NBA2009[-c(1, 2), ]
colnames(NBA2009) <- new_col_names
NBA2009[] <- lapply(NBA2009, type.convert, as.is = TRUE)

# 2010
NBA2010 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2010.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2010[2, ]))
NBA2010 <- NBA2010[-c(1, 2), ]
colnames(NBA2010) <- new_col_names
NBA2010[] <- lapply(NBA2010, type.convert, as.is = TRUE)

# 2011
NBA2011 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2011.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2011[2, ]))
NBA2011 <- NBA2011[-c(1, 2), ]
colnames(NBA2011) <- new_col_names
NBA2011[] <- lapply(NBA2011, type.convert, as.is = TRUE)

# 2012
NBA2012 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2012.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2012[2, ]))
NBA2012 <- NBA2012[-c(1, 2), ]
colnames(NBA2012) <- new_col_names
NBA2012[] <- lapply(NBA2012, type.convert, as.is = TRUE)

# 2013
NBA2013 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2013.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2013[2, ]))
NBA2013 <- NBA2013[-c(1, 2), ]
colnames(NBA2013) <- new_col_names
NBA2013[] <- lapply(NBA2013, type.convert, as.is = TRUE)

# 2014
NBA2014 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2014.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2014[2, ]))
NBA2014 <- NBA2014[-c(1, 2), ]
colnames(NBA2014) <- new_col_names
NBA2014[] <- lapply(NBA2014, type.convert, as.is = TRUE)

# 2015
NBA2015 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2015.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2015[2, ]))
NBA2015 <- NBA2015[-c(1, 2), ]
colnames(NBA2015) <- new_col_names
NBA2015[] <- lapply(NBA2015, type.convert, as.is = TRUE)

# 2016
NBA2016 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2016.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2016[2, ]))
NBA2016 <- NBA2016[-c(1, 2), ]
colnames(NBA2016) <- new_col_names
NBA2016[] <- lapply(NBA2016, type.convert, as.is = TRUE)

# 2017
NBA2017 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2017.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2017[2, ]))
NBA2017 <- NBA2017[-c(1, 2), ]
colnames(NBA2017) <- new_col_names
NBA2017[] <- lapply(NBA2017, type.convert, as.is = TRUE)

# 2018
NBA2018 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2018.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2018[2, ]))
NBA2018 <- NBA2018[-c(1, 2), ]
colnames(NBA2018) <- new_col_names
NBA2018[] <- lapply(NBA2018, type.convert, as.is = TRUE)

# 2019
NBA2019 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2019.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2019[2, ]))
NBA2019 <- NBA2019[-c(1, 2), ]
colnames(NBA2019) <- new_col_names
NBA2019[] <- lapply(NBA2019, type.convert, as.is = TRUE)

# 2020
NBA2020 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2020.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2020[2, ]))
NBA2020 <- NBA2020[-c(1, 2), ]
colnames(NBA2020) <- new_col_names
NBA2020[] <- lapply(NBA2020, type.convert, as.is = TRUE)

# 2021
NBA2021 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2021.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2021[2, ]))
NBA2021 <- NBA2021[-c(1, 2), ]
colnames(NBA2021) <- new_col_names
NBA2021[] <- lapply(NBA2021, type.convert, as.is = TRUE)

# 2022
NBA2022 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2022.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2022[2, ]))
NBA2022 <- NBA2022[-c(1, 2), ]
colnames(NBA2022) <- new_col_names
NBA2022[] <- lapply(NBA2022, type.convert, as.is = TRUE)

# 2023
NBA2023 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2023.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2023[2, ]))
NBA2023 <- NBA2023[-c(1, 2), ]
colnames(NBA2023) <- new_col_names
NBA2023[] <- lapply(NBA2023, type.convert, as.is = TRUE)

# 2024
NBA2024 <- read.csv("../data/01-raw_data/All NBA/AllNBA_2024.csv", header = FALSE)
new_col_names <- as.character(unlist(NBA2024[2, ]))
NBA2024 <- NBA2024[-c(1, 2), ]
colnames(NBA2024) <- new_col_names
NBA2024[] <- lapply(NBA2024, type.convert, as.is = TRUE)

Real_MVP_Data <- read.csv("../data/01-raw_data/NBA MVPs/Real_MVP_Data.csv")




         
