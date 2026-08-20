
vehicle <- data.frame(
  Vehicle_ID = c("V1","V2","V3","V4","V5"),
  Engine_Size = c(1.5,2.0,3.0,2.5,1.8),
  Horsepower = c(110,150,250,200,130),
  Fuel_Efficiency = c(18,15,12,14,17),
  Top_Speed = c(180,200,250,220,190),
  Safety_Rating = c(4,5,5,4,3)
)
print(vehicle)

boxplot(Fuel_Efficiency ~ Safety_Rating,
        data = vehicle,
        col = c("lightblue","lightgreen","pink"),
        main = "Fuel Efficiency by Safety Rating",
        xlab = "Safety Rating",
        ylab = "Fuel Efficiency (km/l)")

colors <- c("blue","green","red","orange","purple")

plot(vehicle$Horsepower,
     vehicle$Top_Speed,
     pch = 19,
     col = colors,
     xlab = "Horsepower",
     ylab = "Top Speed (km/h)",
     main = "Horsepower vs Top Speed")

text(vehicle$Horsepower,
     vehicle$Top_Speed,
     labels = vehicle$Engine_Size,
     pos = 3)

legend("topleft",
       legend = paste("Engine Size", vehicle$Engine_Size, "L"),
       col = colors,
       pch = 19)
model <- lm(Top_Speed ~ Horsepower, data = vehicle)
abline(model, col = "red", lwd = 2)
num_data <- vehicle[,2:6]

cor_matrix <- cor(num_data)

print(cor_matrix)

heatmap(cor_matrix,
        Rowv = NA,
        Colv = NA,
        col = heat.colors(10),
        scale = "none",
        margins = c(7,7),
        main = "Correlation Heatmap")