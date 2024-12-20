# NBA MVP Analysis

## Overview
Who is the true NBA MVP? Should the way the MVP is selected be changed? Is there a better metric to measure a player's performance?

## Abstract

This paper examines the methodology behind the NBA’s Most Valuable Player (MVP) award, introducing the MVP Index as a data-driven measure to evaluate player performance. The MVP Index combines key statistics, including points, assists, rebounds, and win shares, to provide a comprehensive metric of value. Using historical data and statistical modeling, we identify discrepancies between actual MVP winners and those with the highest MVP Index, highlighting the influence of narrative and qualitative factors on voting outcomes. The findings underscore the need for greater transparency and consistency in the MVP selection process while offering a framework for more objective evaluations.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Sports Reference.
-   `data/analysis_data` contains the cleaned data set that was constructed.
-   `model` contains fitted models. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

Aspects of the code were written with the help of the auto-complete tool, Codriver. The abstract and introduction were written with the help of ChatGPT and the entire chat history is available in inputs/llms/usage.txt, and at the following link: https://chatgpt.com/g/g-TgjKDuQwZ-r-wizard/c/674f50c0-8238-8001-a6c5-e43f2dda0bd1

## Data Collection

The process of data collection from Basketball Reference was a rather odd and tedious process as for every table needed opened in an excel file before saving it as a .csv file that could read by R. The instructions can be found in the following Link:
https://www.sports-reference.com/blog/2017/03/automatic-excel-export-added-back-to-tables/
