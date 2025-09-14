##Importing data
library(moderndive)
data("early_january_weather")

##Problem 1
summary(early_january_weather)

#calculating dataset size
nrow(early_january_weather)
ncol(early_january_weather)

#calculating mean of temperature
mean(early_january_weather$temp)

#plotting scatter plot 
library(ggplot2)
ggplot(early_january_weather, aes(x = time_hour, y = temp, color = humid)) +
      geom_point(alpha = .5)
