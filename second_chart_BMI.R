x_values <- seq(1, 3)
y_values <- seq(1,3)

library(ggplot2)

life_expectancy_data_url <- read.csv("Life-Expectancy-Data-Updated.csv")
View(life_expectancy_data_url)

my_plot <- ggplot(data = life_expectancy_data_url) +
  geom_line(mapping = aes(x = BMI, 
                          y = Life_expectancy, 
                          color = "trend of life expectancy")) +
  labs(title = "Trends of Life Expectancy over time by BMI",
       x = "BMI", 
       y = "Life expectancy", 
       color = "trend")
my_plot



