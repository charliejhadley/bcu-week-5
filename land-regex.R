gapminder %>%
  filter(str_detect(country, "^[A-z]{1,}land$")) %>%
  count(country)

gapminder %>%
  filter(str_ends(country, "land")) %>%
  count(country)
