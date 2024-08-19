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


# visualization
ggplot(df, aes(x = Region, y = Cost.of.Living.Index, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Cost of Living Index by Region",
       x = "Region",
       y = "Cost of Living Index") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none")



                         