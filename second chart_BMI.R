x_values <- seq(1, 3)
y_values <- seq(1,3)

library(ggplot2)

life_expectancy_data_url <- read.csv("/Users/nancyliu/Documents/exploratory-analysis-p02-shivramesh7/Life-Expectancy-Data-Updated.csv")
View(life_expectancy_data_url)

ggplot(data = life_expectancy_data_url) +
  geom_line(mapping = aes(x = BMI, 
                          y = Life_expectancy, 
                          color = "trend of life expectancy")) +
  labs(title = "Trends of Life Expectancy over time by BMI",
       x = "BMI", 
       y = "Life expectancy", 
       color = "trend")




