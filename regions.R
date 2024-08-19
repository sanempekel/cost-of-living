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

#filtering countries in the highest region
europe_central_asia <- df %>%
  filter(Region == "Europe & Central Asia")

#sorting
europe_central_asia <- europe_central_asia %>%
  arrange(desc(Cost.of.Living.Index))

europe_central_asia$Country <-
  factor(europe_central_asia$Country, levels = europe_central_asia$Country)

# visualization
ggplot(europe_central_asia, aes(x = Country, y = Cost.of.Living.Index, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Cost of Living Index by Country",
       x = "Countries",
       y = "Cost of Living Index") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
        legend.position = "none")

