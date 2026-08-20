
hotel_data <- data.frame(
  Booking_ID = c(1, 2, 3, 4, 5),
  Stay_Nights = c(2, 5, 3, 7, 4),
  Guests = c(2, 4, 1, 3, 2),
  Room_Type = c("Standard", "Deluxe", "Standard", "Suite", "Deluxe")
)

print(hotel_data)

hist(
  hotel_data$Stay_Nights,
  main = "Histogram of Stay Nights",
  xlab = "Number of Stay Nights",
  ylab = "Frequency",
  col = "skyblue",
  border = "black"
)



room_count <- table(hotel_data$Room_Type)

pie(
  room_count,
  main = "Room Type Distribution",
  col = c("lightgreen", "gold", "orange"),
  labels = paste(
    names(room_count),
    room_count,
    sep = ": "
  )
)

barplot(
  hotel_data$Guests,
  names.arg = paste("Booking", hotel_data$Booking_ID),
  main = "Guests per Booking",
  xlab = "Booking",
  ylab = "Number of Guests",
  col = "steelblue",
  ylim = c(0, max(hotel_data$Guests) + 1)
)


plot(
  hotel_data$Guests,
  hotel_data$Stay_Nights,
  main = "Guests vs Stay Nights",
  xlab = "Number of Guests",
  ylab = "Stay Nights",
  pch = 19,
  col = "blue"
)

text(
  hotel_data$Guests,
  hotel_data$Stay_Nights,
  labels = hotel_data$Booking_ID,
  pos = 3,
  cex = 0.8
)
