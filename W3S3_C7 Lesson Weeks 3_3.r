## Step 1: Load packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)
## Step 2: Import data
hotel_bookings <- read_csv("hotel_bookings.csv")
## Step 3: Getting to know your data
head(hotel_bookings)


# 1. How many columns are in this dataset?
# A: 45
# B: 100
# C: 32
# D: 60

# 2. The 'arrival_date_month' variable is chr or character type data.  
# A: True
# B: False

str(hotel_bookings)

glimpse(hotel_bookings)

colnames(hotel_bookings)

arrange(hotel_bookings, lead_time )

arrange(hotel_bookings, desc(lead_time))
## Practice Quiz
# What is the highest lead time for a hotel booking in this dataset?
# A: 737
# B: 709
# C: 629
# D: 0

# Notice that when you just run `arrange()` without saving your data to a new data frame, it does not alter the existing data frame. 
# Check it out by running `head()` again to find out if the highest lead times are first:
head(hotel_bookings)

# This will be true of all the functions you will be using in this activity. 
# If you wanted to create a new data frame that had those changes saved, you would use the assignment operator, <- , 
# as written in the code chunk below to store the arranged data in a data frame named 'hotel_bookings_v2':
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)

# You can also find out the maximum and minimum lead times without sorting the whole dataset using the `arrange()` function. Try it out using the max() and min() functions below:
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

# This is a common error that R users encounter. 
# Now, let's say you just want to know what the average lead time for booking is because your boss asks you how early you should run promotions for hotel rooms. 
# You can use the `mean()`function to answer that question:
mean(hotel_bookings$lead_time)

# You should get the same answer even if you use the v2 dataset that included the `arrange()` function. 
# This is because the `arrange()` function doesn't change the values in the dataset; it just re-arranges them.
mean(hotel_bookings_v2$lead_time)

# ## Practice Quiz 
# What is the average lead time?
# A: 100.0011
# B: 45.0283
# C: 14.0221
# D: 104.0114

# You know that your first step will be creating a new data set that only contains data about city hotels. 
# You can do that using the `filter()` function, and name your new data frame 'hotel_bookings_city':
hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

# Check out your new data set:
head(hotel_bookings_city)

# You quickly check what the average lead time for this set of hotels is, just like you did for all of hotels before:
mean(hotel_bookings_city$lead_time)

# Now, your boss wants to know a lot more information about city hotels, including the maximum and minimum lead time. 
# They are also interested in how they are different from resort hotels.
# You don't want to run each line of code over and over again, so you decide to use the `group_by()`and`summarize()` functions. You can also use the pipe operator to make your code easier to follow. 
# You will store the new data set in a data frame named 'hotel_summary':

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
# Check out your new dataset using head() again:
head(hotel_summary)