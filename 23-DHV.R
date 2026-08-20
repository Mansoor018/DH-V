
airline_data <- data.frame(
  Passenger_ID = c(1, 2, 3, 4, 5),
  Age = c(28, 45, 33, 52, 39),
  Flight_Hours = c(2, 8, 5, 10, 6),
  Satisfaction = c("High", "Medium", "High", "Low", "Medium")
)

print(airline_data)

hist(
  airline_data$Age,
  main = "Histogram of Passenger Ages",
  xlab = "Age",
  ylab = "Frequency",
  col = "skyblue",
  border = "black"
)


satisfaction_count <- table(airline_data$Satisfaction)

pie(
  satisfaction_count,
  main = "Passenger Satisfaction Levels",
  col = c("lightgreen", "gold", "tomato"),
  labels = paste(
    names(satisfaction_count),
    satisfaction_count,
    sep = ": "
  )
)


barplot(
  airline_data$Flight_Hours,
  names.arg = paste("Passenger", airline_data$Passenger_ID),
  main = "Flight Hours by Passenger",
  xlab = "Passenger",
  ylab = "Flight Hours",
  col = "steelblue",
  ylim = c(0, max(airline_data$Flight_Hours) + 2)
)

plot(
  airline_data$Age,
  airline_data$Flight_Hours,
  main = "Age vs Flight Hours",
  xlab = "Age",
  ylab = "Flight Hours",
  pch = 19,
  col = "blue"
)

text(
  airline_data$Age,
  airline_data$Flight_Hours,
  labels = airline_data$Passenger_ID,
  pos = 3,
  cex = 0.8
)