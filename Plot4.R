data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";")
sub <- data[data$Date %in% c("1/2/2007", "2/2/2007") , ]
global <- as.numeric(sub$Global_active_power)
date <- strptime(paste(sub$Date, sub$Time, ssep = " "), "%d/%m/%Y %H:%M:%S")
v <- as.numeric(sub$Voltage)
sub1 <- as.numeric(sub$Sub_metering_1)
sub2 <- as.numeric(sub$Sub_metering_2)
sub3 <- as.numeric(sub$Sub_metering_3)
globalr <- as.numeric(sub$Global_reactive_power)
png("Plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
plot(date , global, xlab = "", ylab = "Global Active Power", type = 'l')

plot(date, v, xlab = "datetime", ylab = "Voltage", type = 'l')

plot(date, sub1, xlab = "", ylab = "Energy Sub metering", type = 'l')
lines(date, sub2, col = "red")
lines(date, sub3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1.5)

plot(date, globalr, xlab = "datetime", ylab = "Global Reactive Power", type ='l')

dev.off()