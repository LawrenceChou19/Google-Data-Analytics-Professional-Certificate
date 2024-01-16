#In order to start cleaning your data, you will need to  by install the required packages.
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
#Once a package is installed, you can load it by running the `library()` function with the package name inside the parentheses:
library(tidyverse)
library(skimr)
library(janitor)
# Step 2: Import data
bookings_df <- read_csv("hotel_bookings.csv")

# Step 3: Getting to know your data
head(bookings_df)
# You can also summarize or preview the data with the `str()` and `glimpse()` functions 
str(bookings_df)
glimpse(bookings_df)
# You can also use `colnames()` to check the names of the columns in your data set. Run the code chunk below to find out the column names in this data set:
colnames(bookings_df)
# Some packages contain more advanced functions for summarizing and exploring your data
skim_without_charts(bookings_df)

# Step 4: Cleaning your data
trimmed_df <- bookings_df %>% 
  select( hotel,is_canceled ,lead_time )
View(trimmed_df)
# Remember to check the solutions doc if you are having trouble filling out any of these code chunks. 
trimmed_df %>% 
select(hotel, is_canceled, lead_time) %>% 
rename(hitel_type = hotel)#rename( = hotel)
View(trimmed_df) 
# Another common task is to either split or combine data in different columns.
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
#   unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
unity(arrival_month_year, c("arrival_date_month", "arrival_date_year"), `sep = ") "arrival_date_year"), `sep = ") "arrival_date_year"), `sep = ")

# Step 5: Another way of doing things
example_df <- bookings_df %>%
    mutate(guests = Adults + Children + Baby) #mutate(guests = )
head(example_df)
# Great. Now it's time to calculate some summary statistics!
example_df <- bookings_df %>% 
    summarize(number_canceled = sum(is_canceled), 
            average_lead_time =mean(lead_time)) 
    head(example_df)
