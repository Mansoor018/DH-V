
patient <- data.frame(
  Patient_ID = c("P1","P2","P3","P4","P5"),
  Age = c(25,40,55,35,60),
  BMI = c(22,28,30,26,32),
  BP = c(120,135,145,130,150),
  Cholesterol = c(180,210,240,200,260)
)

print(patient)


pairs(patient[,2:5],
      main = "Scatterplot Matrix of Health Indicators",
      col = "blue",
      pch = 19)


qqnorm(patient$Cholesterol,
       main = "Q-Q Plot of Cholesterol",
       col = "blue",
       pch = 19)

qqline(patient$Cholesterol,
       col = "red",
       lwd = 2)


plot(ecdf(patient$Cholesterol),
     main = "ECDF of Cholesterol",
     xlab = "Cholesterol",
     ylab = "Cumulative Probability",
     col = "darkgreen",
     lwd = 2)

average_values <- c(
  mean(patient$Age),
  mean(patient$BMI),
  mean(patient$BP),
  mean(patient$Cholesterol)
)

names(average_values) <- c("Age","BMI","BP","Cholesterol")

print(average_values)


barplot(average_values,
        col = c("skyblue","orange","green","pink"),
        main = "Average Health Indicators",
        xlab = "Health Indicators",
        ylab = "Average Value")