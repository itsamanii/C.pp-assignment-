# Load the built-in cars dataset
data(cars)
# View the first few rows
head(cars)
# Check the structure
str(cars)
# Scatter plot of speed vs stopping distance
plot(cars$speed, cars$dist,
     xlab = "Speed (mph)",
     ylab = "Stopping Distance (ft)",
     pch = 16,
     col = "darkgreen")
# Fit linear regression: dist ~ speed
fit2 <- lm(dist ~ speed, data = cars)

# View the results
summary(fit2)
# Add regression line
abline(fit2, col = "red", lwd = 2)
# Set up a 2x2 grid for diagnostic plots
par(mfrow = c(2, 2))

# Generate diagnostic plots
plot(fit2)

# Reset the plotting layout to 1x1
par(mfrow = c(1, 1))
