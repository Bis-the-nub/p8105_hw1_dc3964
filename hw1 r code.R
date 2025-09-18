##Importing data
library(moderndive)
library(ggplot2)
library(tidyverse)
data("early_january_weather")

##Problem 1
summary(early_january_weather)

#calculating dataset size
nrow(early_january_weather)
ncol(early_january_weather)

#calculating mean of temperature
mean(early_january_weather$temp)

#plotting scatter plot 
Sys.setlocale("LC_TIME", "C") # transfer date from mandarin to english
ggplot(early_january_weather, 
       aes(x = time_hour, 
           y = temp, 
           color = humid)) +
       geom_point(alpha = 0.5) 
# Save plot
ggsave("early_january_weather.png", width = 8, height = 5, dpi = 300)

##Problem 2
set.seed(123)  # reproducibility

# build tibble
tb <- tibble(
  sample = rnorm(10),
  positive = sample > 0,
  chr_10 = c("This","class","is","important",
             "for","my","future","studying","in","biostatistics"),
              factor_level = factor(rep(c("A", "B", "C"), length.out = 10))
)

# attempting to calculate average
tb %>% pull(sample) %>% mean()
tb %>% pull(positive) %>% mean()
tb %>% pull(chr_10) %>% mean()
tb %>% pull(factor_level) %>% mean()

# apply as.numeric() to logical, character, and factor variables
as.numeric(tb$sample)
as.numeric(tb$positive)
as.numeric(tb$chr_10)
as.numeric(tb$factor_level)
