library(dplyr)
library(readr)
life_expectancy_data_url <- read.csv("C:\\Users\\wfgb1\\OneDrive\\Documents\\info201\\exploratory-analysis-p02-shivramesh7\\data\\Life-Expectancy-Data-Updated.csv")

aggregate_table <- life_expectancy_data_url %>%
  group_by(Region) %>%
  summarise(
    Mean_Life_Expectancy = round(mean(Life_expectancy), 2),
    Median_Income = round(median(GDP_per_capita), 2),
    Mean_Alcohol_Consumption = round(mean(Alcohol_consumption), 2),
    Mean_Adult_Mortality = round(mean(Adult_mortality), 2)
  ) %>%
  arrange(desc(Mean_Life_Expectancy))

print(aggregate_table)

