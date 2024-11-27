# Diamond Price Analysis: A Comprehensive Study Using Multiple Linear Regression

## **Description**
This project analyzes the factors influencing diamond prices using a dataset of 5000 diamonds. The dataset includes attributes such as weight (carat), cut quality, color grade, clarity, and price. The study aims to identify key factors that affect diamond prices, build a multiple linear regression model to predict prices, and evaluate the model's performance through visualizations and statistical analysis.

---

## **Tools and Libraries Used**
### **Tools**
- RStudio: Development environment for data analysis and visualization.

### **Libraries**
- `ggplot2`: For creating visualizations, including scatter plots, histograms, and residual plots.
---

## **Main Functions Used**
- `lm()`: To build the multiple linear regression model.
- `summary()`: To summarize the regression model, including coefficients and model performance metrics.
- `factor()`: To handle categorical variables by encoding their levels in a meaningful order.
- `cor()`: To calculate the correlation between numerical variables.
- `geom_point()`, `geom_histogram()`, `geom_smooth()`: For data visualization in `ggplot2`.
- `residuals()` and `fitted()`: To extract residuals and predicted values from the regression model.

---

## **Tasks Completed**
1. **Data Preparation:**
   - Loaded the dataset (`dia.csv`) containing 5000 diamonds.
   - Corrected factor levels for categorical variables (`cut`, `colour`, and `clarity`) to ensure proper encoding in the regression model.

2. **Data Analysis and Visualization:**
   - Analyzed the relationship between diamond weight (carat) and price using scatter plots with trendlines.
   - Calculated the correlation between carat weight and price.
   - Visualized the distribution of diamond prices using histograms.
   - Created faceted histograms to examine price distribution across different color grades.

3. **Regression Modeling:**
   - Built a multiple linear regression model to predict diamond prices based on carat, clarity, color, and cut.
   - Interpreted model coefficients to identify factors with the greatest and least impact on price.

4. **Model Evaluation:**
   - Created residuals vs. predicted prices plot to check model assumptions.
   - Plotted a histogram of residuals to assess normality and identify outliers.
   - Analyzed model performance metrics such as R-squared, F-statistic, and residual standard error.

---

## **Output**
### **Key Findings:**
- **Carat weight** has the strongest impact on price, with each additional carat increasing price by approximately $8932.20.
- **Clarity** significantly affects price, with lower clarity grades causing notable price drops (e.g., SI2 reduces price by $2548.68 compared to FL).
- **Color** influences price to a lesser extent, with lower grades decreasing prices moderately.
- **Cut** has the smallest effect on price but still adds value for higher-quality cuts.

### **Model Performance:**
- **R-squared**: 92.09%, indicating the model explains most of the variation in diamond prices.
- Residual analysis revealed non-linearity and heteroscedasticity, suggesting areas for improvement in the model.

### **Visualizations:**
- Scatter plot showing the strong positive relationship between diamond weight and price.
- Histograms revealing the price distribution of diamonds, with most priced under $5000.
- Faceted histograms illustrating price variation across color grades.
- Residual plots highlighting model limitations, such as inconsistent variance and outliers.

---

## **Conclusion**
This project gave useful insights into what affects diamond prices, showing that carat weight and clarity are the most important factors. The regression model worked well overall, but the residual analysis showed areas where it could be improved. This study is a good example of how multiple linear regression can help understand and analyze pricing in complex data.
