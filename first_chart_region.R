library(dplyr)
library(ggplot2)

life_expectancy_data <- read.csv('Life-Expectancy-Data-Updated.csv')



life_expectancy_data <- life_expectancy_data %>% group_by(Region) %>%
                        summarise(avg_infant_death = mean(Infant_deaths),
                                  avg_under_five_death = mean(Under_five_deaths),
                                  avg_adult_death = mean(Adult_mortality))

death_plot <- ggplot(data = life_expectancy_data, aes(x=Region, y=avg_infant_death)) +
  geom_bar(stat="identity", fill="steelblue") +
  scale_x_discrete(guide=guide_axis(n.dodge = 3)) +
  labs(title="Average Infant Death per 1000 in Each Region",
       x="Region",
       y="Average Infant Death per 100") +
  theme(axis.text = element_text(face = "bold"))
death_plot