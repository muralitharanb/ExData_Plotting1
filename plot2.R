plot2 <- function(){
    
    full_data_set <- read.table("./household_power_consumption.txt",header = TRUE,sep=";",dec=".",na.strings = "?")
    few_day_data_set <- subset(full_data_set, Date == "1/2/2007" | Date == "2/2/2007" )
    plot((strptime(paste(few_day_data_set$Date,few_day_data_set$Time),format="%d/%m/%Y%H:%M:%S")),
         as.numeric(few_day_data_set$Global_active_power),
         type="l",xlab = "",ylab="Global Active Power(kilowatts)")    
    dev.copy(png, file ="plot2.png")
    dev.off()

}