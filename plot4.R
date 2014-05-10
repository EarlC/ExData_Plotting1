setwd("~/R/R Class 2 Stuff")

HPC <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", 
                  na.strings = "?")

HPC2 <- subset(HPC, Date == "1/2/2007" | Date == "2/2/2007")


par(mfcol =  c(2,2), cex.axis = 0.75, cex.lab = 0.75)

plot(HPC2$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power", xaxt ="n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))


plot(HPC2$Sub_metering_1, type = "n", xlab = "", 
     ylab = "Energy sub metering", xaxt ="n")
lines(HPC2$Sub_metering_1, type = "l")
lines(HPC2$Sub_metering_2, type = "l", col = "red")
lines(HPC2$Sub_metering_3, type = "l", col = "blue")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", lty = 1,bty = "n",  col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       text.width = 1500, cex = 0.75)

plot(HPC2$Voltage, type = "l", xlab = "datetime", 
     ylab = "Voltage", xaxt ="n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

plot(HPC2$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", xaxt ="n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()

