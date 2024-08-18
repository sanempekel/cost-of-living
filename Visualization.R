df <- cost.of.living
View(df)

#Installing libraries

install.packages("plotly")
library(plotly)


#Visualization

plot_ly(df, x = ~Cost.of.Living.Plus.Rent.Index, y = ~Local.Purchasing.Power.Index,
        type = 'scatter', mode = 'markers',
        text = ~Country, marker = list(size = 10, color = '#FFB6C1',
                                       line = list(color = '#990000', width = 2))) %>%
  layout(title = "Cost of Living Plus Rent vs Local Purchasing Power",
         xaxis = list(title = "Cost of Living Plus Rent Index"),
         yaxis = list(title = "Local Purchasing Power Index"),
         margin = list(t = 50, r = 50, b = 50, l = 50))





