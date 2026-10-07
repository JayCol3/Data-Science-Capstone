# Bivariate visualiztions for 
# 2 quantative variables (ggplot)

# Create a scatterplot
ggplot(
  data = movies,
  aes(x = Runtime, y = Box.Office)) +
  geom_point() +
  ggtitle("Runtime vs. Box office Revenue") +
  xlab("Runtime (minutes)") +
  ylab("Box Office($M)")

# Add linear regression line
ggplot(
  data = movies,
  aes(x = Runtime, y = Box.Office)) +
  geom_point() +
  geom_smooth(method = "lm") +
  ggtitle("Runtime vs. Box office Revenue") +
  xlab("Runtime (minutes)") +
  ylab("box office ($M)")

# Create a frequency heat map
ggplot(
  data = movies,
  aes(x = Runtime, y = Box.Office)) +
  stat_bin2d() +
  ggtitle("Runtime vs. Box office Revenue") +
  xlab("Runtime (minutes)") +
  ylab("Box office ($M)")

# Create a hexagonal binned frequency heatmap
ggplot(
  data = movies,
  aes(x = Runtime, y = Box.Office)) +
  stat_bin_hex() +
  ggtitle("Runtime vs. Box office Revenue") +
  xlab("Runtime (minutes)") +
  ylab("Box office ($M)")


# Create a contour plot of density
ggplot(
  data = movies,
  aes(x = Runtime, y = Box.Office)) +
  geom_density2d() +
  ggtitle("Runtime vs. Box office Revenue") +
  xlab("Runtime (minutes)") +
  ylab("Box office ($M)")

# Create a level plot of density
ggplot(
  data = movies,
  aes(x = Runtime, y = Box.Office)) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon") +
  ggtitle("Runtime vs, Box office Revenue") +
  xlab("Runtime (minutes)") +
  ylab("Box office ($M)")

# NOTE: 3D visualizations do not exist in ggplot2 

# Create a step chart
ggplot(
  data = timeSeries,
  aes(x = Year, y = Box.Office)) +
  geom_step() +
  expand_limits(y = 0) +
  ggtitle("Box office Revenue by Year") +
  xlab("Year") +
  ylab("Box office ($M)")

# Create a line chart
ggplot(
  data = timeSeries,
  aes(x = Year, y = Box.Office)) +
  geom_line() +
  expand_limits(y =0) +
  ggtitle("Average Box office Rvenue by Year") +
  xlab("Year") +
  ylab("Box office ($M)")

# Creat a area chart
ggplot(
  data = timeSeries,
  aes(x = Year, y = Box.Office)) +
  geom_area() +
  ggtitle("Box office Revenu by Year") +
  ylab("Year") +
  ylab("Box office ($M)")
  

  





  
  

