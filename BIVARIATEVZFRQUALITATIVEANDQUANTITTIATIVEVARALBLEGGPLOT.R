# Bivariate visualizations for both a
# qualitative and quantitiative variable
library("ggplot2")
# Create a bivariate bar chart
ggplot(
  data = average,
  aes(x = Rating, y = Box.Office)) +
  geom_bar(stat = "identity") +
  ggtitle("Average Box office Revenue by Rating") +
  xlab("Rating") +
  ylab("Box office ($M)")

# Create a bivariate box plot
ggplot(
  data = movies,
  aes(x = Rating, y = Box.Office)) +
  geom_boxplot() +
  ggtitle("Box office Revenue by Rating") +
  xlab("Rating") +
  ylab("Box office ($M)")

# Create a notched box plot
ggplot(
  data = movies,
  aes(x = Rating, y = Box.Office)) +
  geom_boxplot(notch = TRUE) +
  ggtitle("Box office Revenue by Rating") +
  xlab("Rating") +
  ylab("Box office ($M)")

# Create a violin plot
ggplot(
  data = movies,
  aes(x = Rating, y = Box.Office)) +
  geom_violin() +
  ggtitle("box office Revenue by Rating") +
  xlab("Rating") +
  ylab("Box iffice($M)")

  
