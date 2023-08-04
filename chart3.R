x_values <- seq(1, 3)
y_values <- seq(1,3)

library(ggplot2)

life_expectancy_data_url <- "file:///Users/shivaniramesh/Desktop/Info201code/exploratory-analysis-p02-shivramesh7/data/Life-Expectancy-Data-Updated.csv"
life_expectancy_data <- read.csv(life_expectancy_data_url, stringsAsFactors = FALSE)

ggplot() +
  geom_point(aes(x = Alcohol_consumption, y = .data[[Life_expectancy]]))
  labs(title = paste("Trends for"),
     x = "Alcohol consumption",
     y = "Life expectancy")
#ggplot(data = life_expectancy_data, aes(x = Alcohol_consumption, y = .data[[life_expectancy_data]])) +
 # geom_line() +
 # labs(title = paste("Trends for"),
     #  x = "Alcohol consumption",
     #  y = "Life expectancy")
