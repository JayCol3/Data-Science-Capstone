# Bivariate visualizations for
# two qualititative variables

# Create a contingency table
awards <- table(
  movies$Awards,
  movies$Rating)

# Display the table
print(awards)

# Create a grouped frequency bar chart
barplot(
  height = awards,
  beside = TRUE,
  main = "Count of Movies by Ratings and Awards",
  xlab = "Ratings",
  ylab = "Count of Movies",
  legend = c("No", "Yes"),
  args.legend = list(
    x = "topleft",
    title = "Awards"))

# Create a stacked frequency bar chart
barplot(
  height = awards,
  main = "Count of Movies by Rating and Awards",
  xlab = "Rating",
  ylab = "Count of Movies",
  legend = c("No", "Yes"),
  args.legend = list(
    x = "topleft",
    title = "Awards"))

# Create a proportional frequency table
proportions <- apply(awards, 2, function(x) { x / sum(x)})

head(awards)

head(proportions)

# Create a 100 stacked frequency bar chart
barplot(
  height = proportions,
  main = "Proportions of Movies by Ratings and Awards",
  xlab = "Rating",
  ylab = "proportion of movies",
  legend = c("No", "Yes"),
  args.legend = list(
    x = "topleft",
    title = "Awards"))

# Create a contengency table
# Note: x and y are correct
awards <- table(
  movies$Rating,
  movies$Award))

colnames(awards) <- c("No", "Yes")

print(awards)

# Create a spinplot
spineplot(
  x = awards, 
  main = "Proportion of Movies by Rating and Awards",
  xlab = "Rating",
  ylab = "awards")

# Crete a mosaic plot
mosaicplot(
  x = awards,
  main = "Proportion od Movies by Ratins and Awards",
  xlab = "Ratings",
  ylab = "Awards")
