# Bivariate visualizations for 
# two qualitative variables (BASE)

# Create a scatterplot
plot(
  x = movies$Runtime,
  y = movies$Box.Office,
  main = "Runtime vs Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "box office ($M)")

# Create a linear regression model
model <- lm(movies$Box.Office ~ movies$Runtime)
  
# Draw linear regression line on the plot
lines(
  x = movies$Runtime,
  y = model$fitted,
  col = "red",
  lwd = 3)

# Install hexbin
install.packages("hexbin")
plot(hb)
# Load the hexbin library
library(hexbin)

# Create a hexagonal binned frequency heatmap
hb <- hexbin(
  x = movies$Runtime,
  y = movies$Box.Office,
  xbins = 30)

plot(
  x = hexbin,
  main = "Runtime vs. Box Office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office (M$)")

# Create a 2D kernel density estimate using
install.packages("MASS")

library(MASS)

# Create a 2d kernel density estimation
density2d <- kde2d(
  x = movies$Runtime,
  y = movies$Box.Office,
  n = 50)

# Create a contour plot of density
contour(
  x = density2d$x,
  y = density2d$y,
  z = density2d$z,
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office ($M)")

# Create a level plot of density
image(
  x = density2d$x,
  y = density2d$y,
  z = density2d$z,
  col = topo.colors(100),
  main = "Runtime vs Box Office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box office ($M)")

# Create mesh plot of density
persp(
  x = density2d$x,
  y = density2d$y,
  z = density2d$z,
  main = "Runtime vs. Box Office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box office ($M)",
  zlab = "Density")

# Create a surface plot of density
palette(topo.colors(100))

persp(
  x = density2d$x,
  y = density2d$y,
  z = density2d$z,
  col = cut(density2d$z, 100),
  main = "Runtime vs. Box Office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office ($M)",
  zlab = "Density")

palette("default")

# Load time series data
timeSeries <- read.csv("Timeseries.csv")

# display the time series data
head(timeSeries)

# Create a step chart
plot(
  x = timeSeries,
  type = "s",
  ylim = c(0, max(timeSeries$Box.Office)),
  main = "Average Box Revenue by Year",
  xlab = "Year",
  ylab = "Box Office ($M)")

# Create a line chart
plot(
  x = timeSeries,
  type = "l",
  ylim = c(0, max(timeSeries$Box.Office)),
  main = "Aversge Box office Revenue by Year",
  xlab = "Year",
  ylab = "Box Office ($M)")






