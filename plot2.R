setwd("~/R/R Class 2 Stuff")

HPC <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", 
                 na.strings = "?")

HPC2 <- subset(HPC, Date == "1/2/2007" | Date == "2/2/2007")


plot(HPC2$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)", xaxt ="n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))


dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
