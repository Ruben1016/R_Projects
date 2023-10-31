library(tidyverse)

data()

view(mpg)
?mpg
?mean

glimpse(mpg)

?filter
filter(mpg, cty >=20)
mpg_efficient <- filter(mpg, cty >=20)
view(mpg_efficient)

mpg_ford <- filter(mpg, manufacturer == "ford")
view(mpg_ford)

mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)
glimpse(mpg_metric)


mpg_metric <- mpg %>%
  mutate(cty_metric = 0.425144 * cty)
view(mpg)

mpg %>%
  group_by(class) %>%
  summarise(mean(cty),
            median(cty))


# Data visiualization ggplot2


ggplot(mpg, aes(x = cty)) + 
  geom_histogram() +
  labs(x = "City Mileage")

ggplot(mpg, aes(x = cty)) + 
  geom_freqpoly() +
  labs(x = "City Mileage")

ggplot(mpg, aes(x = cty)) + 
  geom_histogram() +
  geom_freqpoly() +
  labs(x = "City Mileage")

ggplot(mpg, aes(x = cty,
                y = hwy)) +
  geom_point() + 
  geom_smooth(method = "lm")

ggplot(mpg, aes(x = cty,
                y = hwy,
                color = class)) +
  geom_point() +
  scale_color_brewer(palette = "Dark2")
