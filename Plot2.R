data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";")
sub <- data[data$Date %in% c("1/2/2007", "2/2/2007") , ]
global <- as.numeric(sub$Global_active_power)
date <- strptime(paste(sub$Date, sub$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("Plot2.png", width = 480, height = 480)
plot(date, global, xlab = "", ylab = "Global Active Power", type = 'l')
dev.off()