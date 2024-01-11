data("ToothGrowth")
View(ToothGrowth)
install.packages('dpl')

#Filter dose over 0.5
library(dplyr)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg,len)

arrange(filter(ToothGrowth,dose==0.5),len)

filtered_toothgrowth <- ToothGrowth %>%
    filter(dose==0.5) %>%
    arrange((len))
View(filtered_tg)
#Group and average of the len value
filtered_toothgrowth <- ToothGrowth %>%
    filter(dose==0.5) %>%
    group_by(supp) %>%
    summarize(mean_len = mean(len,na.rm= T),.group="drop")
View(filtered_toothgrowth)
