
hospital <- data.frame(
  Patient_ID = c(1,2,3,4,5),
  Age = c(25,40,35,50,29),
  Waiting_Time = c(2,5,1,7,3),
  Appointment_Status = c("Attended",
                         "Missed",
                         "Attended",
                         "Missed",
                         "Attended")
)

print(hospital)

hist(hospital$Age,
     col="skyblue",
     main="Histogram of Patient Ages",
     xlab="Age",
     ylab="Frequency")

status_count <- table(hospital$Appointment_Status)

pie(status_count,
    col=c("green","red"),
    main="Appointment Status Distribution")

barplot(hospital$Waiting_Time,
        names.arg=hospital$Patient_ID,
        col="orange",
        main="Waiting Time by Patient",
        xlab="Patient ID",
        ylab="Waiting Time (Days)")



plot(hospital$Age,
     hospital$Waiting_Time,
     pch=19,
     col="blue",
     main="Age vs Waiting Time",
     xlab="Patient Age",
     ylab="Waiting Time (Days)")

model <- lm(Waiting_Time ~ Age,
            data=hospital)

abline(model,
       col="red",
       lwd=2)