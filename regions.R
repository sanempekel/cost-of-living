View(df)

# installing packages
install.packages("countrycode")
install.packages("dplyr")
install.packages("ggplot2")
library(countrycode)
library(dplyr)
library(ggplot2)

# identifying regions
df$Region <- countrycode(df$Country, "country.name", "region")

# editing columns
df <- df %>%
  select(Rank, Country, Region, everything())

# average cost of living by region
regions <- split(df, df$Region)
cost_of_living_by_regions <- 
  aggregate(Cost.of.Living.Index ~ Region, data = df, FUN = mean)

# visualization
ggplot(cost_of_living_by_regions, aes(x = Region, y = Cost.of.Living.Index, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Cost of Living Index by Region",
       x = "Region",
       y = "Average Cost of Living Index") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none")



                         