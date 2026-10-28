# Regression in R

# Linear Regression

hours <- c(1, 2, 3, 4, 5, 6)
marks <- c(40, 45, 50, 60, 65, 70)

# Create model
model <- lm(marks ~ hours)

# Display result
print(model)

# Plot data
plot(hours, marks,
   main = "Linear Regression",
   xlab = "Study Hours",
   ylab = "Marks",
   pch = 19)

# Draw regression line
abline(model)

# Logistic Regression

hours <- c(1, 2, 3, 4, 5, 6)
result <- c(0, 0, 0, 1, 1, 1)

# Create model
model <- glm(result ~ hours,
         family = binomial)

# Display result
print(model)

# Calculate probability
probability <- predict(model,type = "response")

print(probability)

# Plot
plot(hours, result,
    main = "Logistic Regression",
    xlab = "Study Hours",
    ylab = "Pass / Fail",
    pch = 19)

# Draw logistic curve
lines(hours, probability)

# Multiple Linear Regression

hours <- c(1, 2, 3, 4, 5, 6)
attendance <- c(60, 65, 70, 75, 80, 90)
marks <- c(40, 45, 50, 60, 65, 75)

# Create model
model <- lm(marks ~ hours + attendance)

# Display result
print(model)

# Predict marks
predicted <- predict(model)

print(predicted)

# Plot actual vs predicted
plot(marks, predicted,
    main = "Multiple Linear Regression",
    xlab = "Actual Marks",
    ylab = "Predicted Marks",
    pch = 19)

# Draw reference line
abline(0, 1)
