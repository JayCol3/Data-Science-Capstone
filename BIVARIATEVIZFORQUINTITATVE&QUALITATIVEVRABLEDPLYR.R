# Bivariate visualizations for both a 
# qualitative and quantitative variable



library("dplyr")


# Create a table of average box office b rating
movies$Rating <- as.factor(movies$Rating)
movies <- read.csv("movies.csv", stringsAsFactors = FALSE)
average <- movies %>%
  select(Rating, Box.Office) %>%
  group_by(Rating) %>%
  summarize(Box.Office = mean(Box.Office)) %>%
  as.data.frame()
print(average)
# Create a Bivariate Bar chart
library(lattice)
barchart(
  x = Box.Office ~ Rating,
  data = average,
  main = "Average Box Office Revenue by Rating",
  xlab = "Rating",
  ylab = "box Office ($M)")
library("dplyr")
bwplot(
  x = Box.Office ~ Rating, 
  data = movies,
  main = "Box office Revenue by Rating",
  xlab = "Rating",
  ylab = "Box Office ($M)")

# Create a notched box plot
bwplot(
  x = Box.Office ~ Rating,
  data = movies,
  notch = TRUE,
  main = "Box office Revenue by Rating",
  xlab = "Rating",
  ylab = "Box office ($M)")

# Createa violin plot
bwplot(
  x = Box.Office ~ Rating,
  data = movies,
  panel = panel.violin,
  main = "Box office Revenue by Rating",
  xlab = "Rating",
  ylab = "Box office ($M)")
