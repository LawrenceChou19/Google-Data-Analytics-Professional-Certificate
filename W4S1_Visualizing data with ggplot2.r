install.packages("gglot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

bookings_df <- read_csv("hotel_bookings.csv")
View(bookings_df)
data(penguins) 
View(penguins)
ggplot(data=bookings_df) + geom_point(mapping = aes(x=arrival_date_year,y=lead_time))

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))

penguins %>% 
  group_by(species) %>% 
  summarize(across(where(is.numeric), mean, na.rm = TRUE))
