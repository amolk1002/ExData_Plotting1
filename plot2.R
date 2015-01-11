> data1<-read.csv("hpc.txt", header=T, sep=';', na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> str(data1)
> head(data1)
> data1$Date<-as.Date(data1$Date, format="%d/%m/%Y")
> data <- subset(data1, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
> datetime <- paste(as.Date(data$Date), data$Time)
> data$Datetime <- as.POSIXct(datetime)
> plot(data$Global_active_power~data$Datetime, type="l",
+ ylab="Global Active Power (kilowatts)", xlab="")
> dev.copy(png, file="plot2.png", height=480, width=480)
> dev.off()

