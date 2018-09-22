plot4 <- function(){

    full_data_set <- read.table("./household_power_consumption.txt",header = TRUE,sep=";",dec=".",na.strings = "?")
    few_day_data_set <- subset(full_data_set, Date == "1/2/2007" | Date == "2/2/2007" )
    
    par(mfrow = c(2, 2))
    
    plot((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
         as.numeric(few_day_data_set$Global_active_power),
         type="l",xlab = "",ylab="Global Active Power(kilowatts)")    
    
    plot((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
         as.numeric(few_day_data_set$Voltage),
         type="l",xlab = "datetime",ylab="Voltage")
    
    plot((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
         as.numeric(few_day_data_set$Sub_metering_1),
         type="l",xlab = "",ylab="Energy sub Metering")
    points((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
           as.numeric(few_day_data_set$Sub_metering_2),type="l",col="red")
    points((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
           as.numeric(few_day_data_set$Sub_metering_3),type="l",col="blue")
    legend("topright",cex=.5,pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    plot((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
         as.numeric(few_day_data_set$Global_reactive_power),
         type="l",xlab = "datetime",ylab="Global_reactive_power")
    
    
    dev.copy(png, file ="plot4.png")
    dev.off()
    
}