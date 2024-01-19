# ## Step 1: Import your data
# If you haven't exited out of RStudio since importing this data last time, you can skip these steps. 
# Rerunning these code chunks won't affect your console if you want to run them just in case, though.  
# Run the code below to read in the file 'hotel_bookings.csv' into a data frame: 
# If this line causes an error, copy in the line setwd("projects/Course 7/Week 4") before it. 
hotel_bookings <- read.csv("hotel_bookings.csv")

# ## Step 2: Refresh Your Memory
# By now, you are pretty familiar with this data set. 
# But you can refresh your memory with the `head()` and `colnames()` functions. Run two code chunks below to get at a sample of the data and also preview all the column names:
head(hotel_bookings)
colnames(hotel_bookings)

# ## Step 3: Install and load the 'ggplot2' package (optional)
# Run the code chunk below to install and load `ggplot2` if you don't have it installed and loaded already. 
# This may take a few minutes!

install.packages("ggplot2")
library("ggplot2")

## Step 4: Making a Bar Chart
# Previously, you used `geom_point` to make a scatter plot comparing lead time and number of children. 
# Now, you will use `geom_bar` to make a bar chart in this code chunk: 
ggplot(data= hotel_bookings) +
    geom_bar(mapping=aes(x= distribution_channel))

## Practice quiz
# Use the bar chart you created to answer this question: what distribution type has the most number of bookings? Note your answer for the practice quiz question in Coursera afterwards.

# A: TA/TO
# B: Direct
# C: GDS
# D: Corporate
# Answer: A. The TA/TO distribution type has the most number of bookings.

## Step 5: Diving deeper into bar charts
# After exploring your bar chart, your stakeholder has more questions. 
# Now they want to know if the number of bookings for each distribution type is different depending on whether or not there was a deposit or what market segment they represent. 
# Try modifying the code below to answer the question about deposits by adding 'fill=deposit_type' after 'x = distribution_channel':
ggplot(data=hotel_bookings)+
    geom_bar((mapping=aes(x=distribution_channel,fill=deposit_type)))

# Now try running the code below to answer the question about different market segments. 
# You will use 'fill=market_segment' to accomplish this.

ggplot(data=hotel_bookings)+
    geom_bar((mapping=aes(x=distribution_channel,fill=market_segment)))
    
## Step 6: Facets galore
# After reviewing the new charts, your stakeholder asks you to create separate charts for each deposit type and market segment to help them understand the differences more clearly.
# You know that the `facet_` function can do this very quickly.
# Add 'deposit_type' after the '~' symbol in the code chunk below to create a different chart for each deposit type:
ggplot(data=hotel_bookings)+
    geom_bar(mapping = aes(x=distribution_channel))+
    facet_wrap(~deposit_type)
# Run the code chunk below to create a different chart for each deposit type:
ggplot(data = hotel_bookings) +
    geom_bar(mapping = aes(x = distribution_channel)) +
    facet_wrap(~market_segment)
# The `facet_grid` function does something similar. The main difference is that `facet_grid` will include plots even if they are empty. Run the code chunk below to check it out:
ggplot(data = hotel_bookings) +
    geom_bar(mapping = aes(x = distribution_channel)) +
    facet_grid(~deposit_type)

ggplot(data = hotel_bookings) +
    geom_bar(mapping = aes(x = distribution_channel)) +
    facet_grid(~deposit_type) +
    theme(axis.text.x = element_text(angle = 45))

# Now you should have three bar charts-- but notice that the 'Refundable' chart has much less data plotted than the other two. 
# Now, you could put all of this in one chart and explore the differences by deposit type and market segment.
# Run the code chunk below to find out; notice how the ~ character is being used before the variables that the chart is being split by: 

ggplot(data = hotel_bookings) +
    geom_bar(mapping = aes(x = distribution_channel)) +
    facet_wrap(~deposit_type~market_segment) +
    theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
    geom_bar(mapping = aes(x = distribution_channel)) +
    facet_wrap(~deposit_type~market_segment)