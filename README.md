# Cost of Living Index by Country
Based on 2024 data, we will find the most liveable country.

## About Dataset
Cost of Living Index by Country, 2024 Mid Year data
Data scraped from Numbeo: www.numbeo.com/cost-of-living/rankings_by_country.jsp
All credits to Numbeo: www.numbeo.com/cost-of-living/

An index of 100 reflects the same living cost as in New York City, United States.
As of 2024 Mid Year data, in NYC,
A family of four estimated monthly costs are $6,074.40 without rent.
A single person's estimated monthly costs are $1,640.90 without rent.

Resource: https://www.kaggle.com/datasets/myrios/cost-of-living-index-by-country-by-number-2024/data

# Analysis
In the dataset, which includes 121 countries, I used the countrycode library to categorise these countries by region. For the analysis, I used the R programming language to evaluate the cost of living index across different regions. This allowed me to determine which region had the highest cost of living index.

![regions](https://github.com/user-attachments/assets/5fcb6c73-584c-4b65-864a-c09bba6b6d7a)

In my analysis, I used the ggplot2 library, specifically its geom_bar function, to create bar charts visualizing the average cost of living index by region. This visualization technique allowed me to effectively compare the cost of living across different regions and identify trends in the data. The Europe & Central Asia region emerged as a significant area of interest due to its high cost of living index. To identify and focus on the countries within this region, I utilized the dplyr library in R. By leveraging dplyr’s data manipulation capabilities, I filtered and extracted the countries belonging to the Europe & Central Asia region for further examination.

Before proceeding with the visualization, I performed a sorting operation based on the cost of living index. This step involved organizing the data in descending order of the cost of living index to ensure that the countries with the highest cost of living were prominently displayed. This sorting process allowed for a more meaningful comparison and clearer interpretation of the data during the subsequent visualization phase.

After sorting the data based on the cost of living index, I used the ggplot2 library’s geom_bar function to visualize the data for countries in the Europe & Central Asia region. This bar chart effectively displayed the sorted cost of living indices, allowing for a clear and comparative view of the cost of living across different countries within this region. The visualization facilitated the identification of countries with the highest and lowest cost of living, providing valuable insights for further analysis.

![countries](https://github.com/user-attachments/assets/128f66bc-e852-4146-8524-0f34679ccf22)

To enhance the clarity of my future visualizations, I first filtered the top 10 countries based on the cost of living index using the dplyr library. This step allowed me to focus on the countries with the highest cost of living index. Subsequently, I created a scatter plot to simultaneously visualize the Cost of Living Index and Local Purchasing Power Index for these top 10 countries. This approach provided a more refined view and allowed for a direct comparison of how local purchasing power relates to the cost of living among the top countries in the Europe & Central Asia region.

![scatter_plot](https://github.com/user-attachments/assets/18c7e206-4e9d-41a7-8b5a-3bb8435c8f77)

In the bar chart, Switzerland and Iceland were initially ranked as the top two countries based on the cost of living index. However, when the Local Purchasing Power Index was incorporated into the visualization, it became evident that Luxembourg and Switzerland emerged as the top two countries. This shift highlights that while Switzerland and Iceland have high cost of living indices, Luxembourg also plays a significant role when considering local purchasing power, reflecting a more nuanced perspective on economic conditions.
