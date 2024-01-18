install.packages(("tidyverse"))

library("ggplot2")
library("palmerpenguins")

View(penguins)
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))


ggplot(data=penguins)

#Aesthetic a visual property of an object in your plot
#Mapping(R) Matching up a specific variable in your dataset with a specific aesthetic
ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))

glimpse(penguins)

# use %>%
ggplot(data=penguins) %>% 
    geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

?geom_point
