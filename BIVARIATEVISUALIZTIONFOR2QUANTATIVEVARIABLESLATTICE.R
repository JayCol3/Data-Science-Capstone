# Bivariate visualization for
# two quantitative variables (lattice)

# Create a scatterplot
xyplot(
  x = Box.Office ~ Runtime,
  data = movies,
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office ($M)")

# Add linear regression line
xyplot(
  x = Box.Office ~ Runtime,
  data = movies,
  type = c("p", "r"),
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box office($M)")
# Load hexbin library
library(hexbin)


# Create hexagonal binned frequency heatmap
hexbinplot(
  x = Box.Office ~ Runtime,
  data = movies,
  xbins = 30,
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box office ($M)")

# Create a grid from our 2d kernel density estimate
grid <- expand.grid(
  x = density2d$x,
  y = density2d$y)

grid$z <- as.vector(density2d$z)

# Display the data frame
head(grid)

# Create a contour plot of density
contourplot(
  x = z ~ x * y,
  data = grid,
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box office ($M)")

# Create a level plot of density
levelplot(
  x = z ~ x * y,
  data = grid,
  main = "Runtime vs, Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office ($M)")

# Create a mesh plot of density
wireframe(
  x = z ~ x * y,
  data = grid,
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office ($M)",
  zlab = "density")

# Create a surface plot of density
wireframe(
  x = z ~ x * y,
  data = grid,
  drape = TRUE,
  main = "Runtime vs. Box office Revenue",
  xlab = "Runtime (minutes)",
  ylab = "Box Office ($M)",
  zlab = "Density")

# Create a stepchart
xyplot(
  x = Box.Office ~ Year,
  data = timeSeries,
  type = "s",
  ylim = c(0, max(timeSeries$Box.Office)),
  main = "Avereage Box office Revenue by Year",
  xlab = "Year",
  ylab = "Box office ($M)")
# Create a line chart 
xyplot(
  x = Box.Office ~ Year,
  data = timeSeries,
  type = "l",
  ylim = c(0, max(timeSeries$Box.Office)),
  main = "Average Box office Revenue by Year",
  xlab = "Year",
  ylab = "Box office ($M)")

# Download, istall and load Lattice Xtra Packages
install.packages("latticeExtra")


library(latticeExtra)

# Create an area chart
xyplot(
  x = Box.Office ~ Year,
  data = timeSeries,
  panel = panel.xyarea,
  ylim = c(0, max(timeSeries$Box.Office)),
  main = "Average Box office Revenue by Year",
  xlab = "Year",
  ylab = "Box office ($M)")
