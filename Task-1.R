# Load required libraries
library(ggplot2)
library(knitr)

# Load the dataset
dia <- read.csv("dia.csv")

# Step 1: Correct Factor Levels for Categorical Variables
dia$cut <- factor(dia$cut, levels = c("Fair", "Good", "Very Good", "Premium", "Ideal"))
dia$colour <- factor(dia$colour, levels = c("D", "E", "F", "G", "H", "I", "J"))
dia$clarity <- factor(dia$clarity, levels = c("FL", "IF", "VVS1", "VVS2", "VS1", "VS2", "SI1", "SI2", "I1", "I2", "I3"))

# Structure of data
str(dia)

# Step 2: Scatter Plot of Price vs Carat
ggplot(dia, aes(x = carat, y = price)) +
  geom_point(color = "#42f5b3") +
  labs(title = "Relationship between Diamond Price and Weight (Carat)",
       x = "Weight (Carat)",
       y = "Diamond Price in NZ$") +
  geom_smooth(method = "lm", color = "blue") +
  theme(plot.title = element_text(hjust = 0.5))


# Step 3: Correlation Between Price and Carat
correlation <- cor(dia$price, dia$carat)
cat("Correlation between price and carat:", correlation, "\n")

# Step 4: Histogram of Diamond Prices
ggplot(dia, aes(x = price)) +
  geom_histogram(fill = "#42f5b3", binwidth = 1000, colour = "black") +
  labs(title = "Diamond Price Distribution",
       x = "Diamond Price in NZ$",
       y = "Frequency") +
  theme_minimal()

# Step 5: Facet Chart for Price Distribution by Colour
ggplot(dia, aes(x = price, fill = colour)) +
  geom_histogram(binwidth = 500, color = "black", alpha = 0.8) +
  facet_grid(colour ~ ., scales = "free") +
  labs(title = "Diamond Price Distribution by Colour",
       x = "Diamond Price in NZ$",
       y = "Frequency") +
  theme_minimal() +
  theme(strip.text.y = element_text(size = 10, face = "bold"),
        axis.text.x = element_text(size = 8),
        axis.text.y = element_text(size = 8),
        legend.position = "none")

# Step 6: Linear Regression Model
model <- lm(price ~ carat + clarity + colour + cut, data = dia)
summary(model)

# Step 7: Residual Plot
residuals <- residuals(model)
fitted_values <- fitted(model)

plot(fitted_values, residuals,
     xlab = "Predicted Prices",
     ylab = "Residuals",
     main = "Residuals vs Predicted Prices",
     col = "#42f5b3",
     pch = 19)
abline(h = 0, col = "red", lwd = 2)

# Step 8: Histogram of Residuals
hist(residuals,
     breaks = 50,
     col = "#42f5b3",
     border = "black",
     main = "Histogram of Residuals",
     xlab = "Residuals",
     ylab = "Frequency")
abline(v = 0, col = "red", lwd = 2)
