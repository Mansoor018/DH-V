
movies <- data.frame(
  Movie_ID = c(1, 2, 3, 4, 5),
  Genre = c("Action", "Comedy", "Drama", "Action", "Comedy"),
  Rating = c(4.5, 3.8, 4.2, 4.7, 3.5),
  Duration = c(120, 90, 140, 130, 95)
)

print(movies)


hist(
  movies$Rating,
  main = "Histogram of Movie Ratings",
  xlab = "Rating",
  ylab = "Frequency",
  col = "skyblue",
  border = "black"
)

genre_count <- table(movies$Genre)

pie(
  genre_count,
  main = "Genre Distribution",
  col = c("orange", "lightblue", "lightgreen"),
  labels = paste(
    names(genre_count),
    genre_count,
    sep = ": "
  )
)


average_rating <- aggregate(
  Rating ~ Genre,
  data = movies,
  FUN = mean
)

print(average_rating)

barplot(
  average_rating$Rating,
  names.arg = average_rating$Genre,
  main = "Average Ratings by Genre",
  xlab = "Genre",
  ylab = "Average Rating",
  col = c("orange", "lightblue", "lightgreen"),
  ylim = c(0, 5)
)


plot(
  movies$Duration,
  movies$Rating,
  main = "Duration vs Movie Rating",
  xlab = "Duration (Minutes)",
  ylab = "Rating",
  pch = 19,
  col = "blue"
)

text(
  movies$Duration,
  movies$Rating,
  labels = movies$Movie_ID,
  pos = 3,
  cex = 0.8
)
