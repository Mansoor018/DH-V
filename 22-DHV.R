
library_data <- data.frame(
  User_ID = c(1, 2, 3, 4, 5),
  Books_Borrowed = c(2, 5, 3, 6, 1),
  Days_Kept = c(10, 25, 14, 30, 7),
  Fine_Amount = c(0, 15, 0, 20, 0)
)


print(library_data)


hist(
  library_data$Books_Borrowed,
  main = "Histogram of Books Borrowed",
  xlab = "Number of Books Borrowed",
  ylab = "Frequency",
  col = "skyblue",
  border = "black"
)

fine_status <- ifelse(
  library_data$Fine_Amount > 0,
  "With Fine",
  "Without Fine"
)

fine_count <- table(fine_status)

pie(
  fine_count,
  main = "Users With and Without Fines",
  col = c("tomato", "lightgreen"),
  labels = paste(
    names(fine_count),
    fine_count,
    sep = ": "
  )
)


barplot(
  library_data$Fine_Amount,
  names.arg = paste("User", library_data$User_ID),
  main = "Fine Amount by User",
  xlab = "User",
  ylab = "Fine Amount",
  col = "orange",
  ylim = c(0, max(library_data$Fine_Amount) + 5)
)



plot(
  library_data$Days_Kept,
  library_data$Fine_Amount,
  main = "Days Kept vs Fine Amount",
  xlab = "Days Kept",
  ylab = "Fine Amount",
  pch = 19,
  col = "blue"
)

text(
  library_data$Days_Kept,
  library_data$Fine_Amount,
  labels = library_data$User_ID,
  pos = 3,
  cex = 0.8
)