mobile <- data.frame(
  User_ID = c("U01","U02","U03","U04","U05","U06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Screen_Time = c(4.5,6.0,3.2,7.1,2.8,5.4),
  App_Usage_Count = c(18,25,12,30,10,22),
  Data_Used = c(2.4,3.8,1.6,4.5,1.2,3.1),
  Satisfaction = c(3,5,3,5,2,4),
  Usage_Date = c("2025-01-08","2025-01-08",
                 "2025-02-11","2025-02-11",
                "2025-03-14","2025-03-14")
)
print(mobile)
hist(mobile$Screen_Time,
     col="lightblue",
     main="Histogram of Screen Time",
     xlab="Screen Time (Hours)",
     ylab="Frequency")
d <- density(mobile$Screen_Time)
plot(d,
     col="blue",
     lwd=3,
     main="Density Plot of Screen Time",
     xlab="Screen Time (Hours)")
polygon(d,
        col=rgb(0,0,1,0.3),
        border="blue")
plot(mobile$Data_Used,
     mobile$Screen_Time,
     pch=19,
     col="darkgreen",
     main="Data Used vs Screen Time",
     xlab="Data Used (GB)",
     ylab="Screen Time (Hours)")

cor_value <- cor(mobile$Data_Used,
                 mobile$Screen_Time)

print(paste("Correlation =", round(cor_value,3)))


 Add Regression Trend Line

model <- lm(Screen_Time ~ Data_Used,
            data=mobile)

abline(model,
       col="red",
       lwd=2)
avg_satisfaction <- aggregate(
  Satisfaction ~ Gender,
  data=mobile,
  FUN=mean
)
print(avg_#satisfaction)
bars <- barplot(
  avg_satisfaction$Satisfaction,
  names.arg=avg_satisfaction$Gender,
  col=c("orange","purple"),
  main="Average Satisfaction Score by Gender",
  xlab="Gender",
  ylab="Average Satisfaction",
  ylim=c(0,5)
)
text(bars,
     avg_satisfaction$Satisfaction,
     labels=round(avg_satisfaction$Satisfaction,2),
     pos=3)
