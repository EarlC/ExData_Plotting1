setwd("~/R/R Class 2 Stuff")

HPC <- read.table("household_power_consumption.txt",header = TRUE, sep = ";", 
                 na.strings = "?")

HPC2 <- subset(HPC, Date == "1/2/2007" | Date == "2/2/2007")


hist(HPC2$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
