library(tidyverse)
library(gapminder)

# filter for values in Europe and the year 2007
gapminder %>%
  pivot_longer(lifeExp:gdpPercap) %>%
  filter(str_detect(continent, "Europe"),
         year > 1987) %>%
  ggplot() +
  aes(x = year,
      y = value,
      colour = name) +
  geom_line() +
  facet_wrap(~ country)


read_csv("https://raw.githubusercontent.com/charliejhadley/eng7218_data-science-for-healthcare-applications_bcu-masters/main/static/datasets/qualtrics-data.csv")
