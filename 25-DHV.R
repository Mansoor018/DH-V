
order_id <- c(1, 2, 3, 4, 5)
items <- c(2, 5, 3, 4, 2)
bill <- c(25, 60, 35, 50, 20)
dining <- c("Dine-In", "Takeaway", "Dine-In", "Delivery", "Takeaway")

data <- data.frame(order_id, items, bill, dining)

hist(data$bill,
     main = "Histogram of Bill Amounts",
     xlab = "Bill Amount ($)",
     ylab = "Frequency")

dining_count <- table(data$dining)

pie(dining_count,
    main = "Dining Types",
    labels = names(dining_count))
barplot(data$items,
        names.arg = data$order_id,
        main = "Items Ordered by Order",
        xlab = "Order ID",
        ylab = "Items Ordered")

plot(data$items,
     data$bill,
     main = "Items Ordered vs Bill Amount",
     xlab = "Items Ordered",
     ylab = "Bill Amount ($)",
     pch = 19)

abline(lm(bill ~ items, data = data))