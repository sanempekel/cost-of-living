View(df)

# installing packages
install.packages("countrycode")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggrepel")
library(countrycode)
library(dplyr)
library(ggplot2)
library(ggrepel)

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

#picking top 10
top_20_europe_central_asia <- europe_central_asia %>%
  arrange(desc(Cost.of.Living.Index)) %>%
  head(20)

# scatter plot
library(ggplot2)
library(ggrepel)

# ggplot ile scatter plot oluşturma ve ülke isimlerini etiketlerle ekleme
ggplot(top_10_europe_central_asia, aes(x = Cost.of.Living.Index, y = Local.Purchasing.Power.Index)) +
  geom_point(color = "#00B2FF", size = 3) +
  geom_label_repel(aes(label = Country), size = 3.5, box.padding = 0.5, point.padding = 0.5, 
                   segment.color = 'grey50', max.overlaps = Inf) +
  labs(title = "Cost of Living vs Local Purchasing Power in Europe & Central Asia",
       x = "Cost of Living Index",
       y = "Local Purchasing Power Index") +
  theme_minimal()