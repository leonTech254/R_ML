# Load required libraries
install.packages("ggplot2")  # Uncomment if ggplot2 is not installed
install.packages("caret")     # Uncomment if caret is not installed

library(ggplot2)
library(caret)

# Load the mtcars dataset
data(mtcars)

# Check for missing values
if (sum(is.na(mtcars)) > 0) {
  mtcars <- na.omit(mtcars)  # Remove rows with NA values
}

# Set seed for reproducibility
set.seed(123)

# Split the data into training and testing sets (80% train, 20% test)
splitIndex <- createDataPartition(mtcars$mpg, p = 0.8, list = FALSE)
training_data <- mtcars[splitIndex, ]
testing_data <- mtcars[-splitIndex, ]

# Fit a linear regression model to predict mpg
model <- lm(mpg ~ ., data = training_data)

# Display the model summary
summary(model)

# Make predictions on the testing set
predictions <- predict(model, newdata = testing_data)

# Create a data frame for actual vs predicted values
plot_data <- data.frame(Actual = testing_data$mpg, Predicted = predictions)

# Visualize actual vs predicted values using ggplot2
ggplot(plot_data, aes(x = Actual, y = Predicted)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, color = "red") +
  labs(x = "Actual MPG", y = "Predicted MPG", title = "Actual vs. Predicted MPG") +
  theme_minimal()

