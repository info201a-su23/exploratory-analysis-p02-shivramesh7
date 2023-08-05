x_values <- seq(1, 3)
y_values <- seq(1,3)

library(ggplot2)

life_expectancy_data_url <- "Life-Expectancy-Data-Updated.csv"
life_expectancy_data <- read.csv(life_expectancy_data_url, stringsAsFactors = FALSE)

chart_3 <- ggplot(data=life_expectancy_data) +
  geom_point(aes(x = Alcohol_consumption, y = Life_expectancy)) +
  labs(title = paste("Trends for"),
     x = "Alcohol consumption",
     y = "Life expectancy")
chart_3
#ggplot(data = life_expectancy_data, aes(x = Alcohol_consumption, y = .data[[life_expectancy_data]])) +
 # geom_line() +
 # labs(title = paste("Trends for"),
     #  x = "Alcohol consumption",
     #  y = "Life expectancy")
