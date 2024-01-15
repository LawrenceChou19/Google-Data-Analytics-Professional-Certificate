install.packages("tidyverse")
library(ggplot2)
data("diamonds")
View(diamonds)
head(diamonds)#get the six row
str(diamonds)# This gives us some high-level info like the column names and the type of data contained in those columns.
colnames(diamonds)# if we just want to know the column names we can use colnames instead.

library(tidyverse)
mutate(diamonds,carat_2= carat*100) #use the mutate function to make changes to our data frame
