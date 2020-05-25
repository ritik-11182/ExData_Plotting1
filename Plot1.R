library(datasets)
data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";")
subdata <- data[data$Date %in% c("1/2/2007", "2/2/2007") , ]
global_active_power <- as.numeric(subdata$Global_active_power)
png("Plot1.png" , width = 480, height = 480)
hist(global_active_power, col = "red" , main = "Global Active Power(kilowatts)", xlab = "Global Active Power" , ylab = "Frequency")
dev.off()
