install.packages("ggplot2")
install.packages('palmerpenguins')
install.packages("dplyr")   
library(ggplot2)
library(palmerpenguins)
library(dplyr)

ggplot(data=penguins)+
    geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
    labs(title="Palmer Penguins : Body Mass Vs. Flipper Length",subtitle="Sample of Three Penguin Species",
        caption="Data collected by Dr. Kristen Gorman")

ggsave("Three Penguin Species.png")


ggplot(data = diamonds) + geom_bar(mapping = aes(x = color, fill = cut)) + facet_wrap(~clarity)

ggplot(data = penguins) + 

   geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = buildings) + 

geom_bar(mapping = aes(x = construction_year), color="purple")

ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))