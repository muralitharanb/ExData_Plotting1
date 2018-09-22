
plot1 <- function(){
    
    full_data_set <- read.table("./household_power_consumption.txt",header = TRUE,sep=";",dec=".",na.strings = "?")
    few_day_data_set <- subset(full_data_set, Date == "1/2/2007" | Date == "2/2/2007" )
    hist(as.numeric(few_day_data_set$Global_active_power),freq=TRUE,
         main = "Global Active Power",
         xlab="Global Active Power(kilowatts)",ylab="Frequency",col = "red"
         )
    dev.copy(png, file ="plot1.png")
    dev.off()
    
}
