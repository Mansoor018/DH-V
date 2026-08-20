
student <- data.frame(
  Student_ID = c("S1","S2","S3","S4","S5"),
  Age = c(19,21,20,22,23),
  Study_Hours = c(12,8,15,10,7),
  Attendance = c(90,70,95,85,60),
  Test_Score = c(85,70,92,80,65),
  Participation_Score = c(8,7,9,8,6)
)
print(student)

area_data <- rbind(student$Test_Score,
                   student$Participation_Score)

colnames(area_data) <- student$Student_ID

matplot(t(area_data),
        type = "l",
        lty = 1,
        lwd = 3,
        col = c("blue","green"),
        xlab = "Students",
        ylab = "Scores",
        main = "Test Score and Participation Score")

polygon(c(1:5,5:1),
        c(student$Test_Score,
          rev(student$Participation_Score)),
        col = rgb(0,0,1,0.2),
        border = NA)

legend("topright",
       legend=c("Test Score","Participation Score"),
       col=c("blue","green"),
       lty=1,
       lwd=3)
attendance_group <- cut(
  student$Attendance,
  breaks = quantile(student$Attendance,
                    probs=c(0,0.25,0.50,0.75,1)),
  include.lowest = TRUE,
  labels=c("Q1","Q2","Q3","Q4")
)

boxplot(student$Study_Hours ~ attendance_group,
        col=c("skyblue","orange","green","pink"),
        main="Study Hours by Attendance Quartiles",
        xlab="Attendance Quartiles",
        ylab="Study Hours")
plot(density(student$Test_Score),
     col="purple",
     lwd=3,
     main="Density Plot of Test Scores",
     xlab="Test Score")

polygon(density(student$Test_Score),
        col=rgb(0.5,0,0.5,0.3),
        border="purple")