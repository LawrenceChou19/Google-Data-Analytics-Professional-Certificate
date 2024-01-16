#If you haven't already installed the palmerpenguins package in RStudio, refer to the https://allisonhorst.github.io/palmerpenguins/

install.packages("palmerpenguins")
library("palmerpenguins")
install.packages("tidyverse")
library(tidyverse)
penguins %>% arrange(bill_length_mm)

penguins2 <- penguins %>% arrange
View(penguins2)

penguins2 <- penguins %>% arrange(-bill_length_mm)
penguins %>% group_by(island) %>% drop_na() %>%  summarise(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_b1 = max(bill_length_mm),mean_bl = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")
