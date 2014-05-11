# Before reading data, we have used Unix tools to find out, from which line number the desired date range begins:
# grep -n  "1/2/2007"  household_power_consumption.txt  | head -n 1
# grep -n "2/3/2007"  household_power_consumption.txt  | head -n 1
# eg. range begins from 66638 and ends to 69517 (grep gives 69518, eg. the 2/2 range ends one line earlier.)


df <- read.csv('../data/household_power_consumption.txt',
               sep = ';',
               colClasses = c(
                 'character',
                 'character',
                 'numeric',
                 'numeric',
                 'numeric',
                 'numeric',
                 'numeric',
                 'numeric',
                 'numeric'),
               header = FALSE,
               col.names = c(
                 'Date',
                 'Time',
                 'Global_active_power',
                 'Global_reactive_power',
                 'Voltage',
                 'Global_intensity',
                 'Sub_metering_1',
                 'Sub_metering_2',
                 'Sub_metering_3'
               ),
               skip = 66638,
               nrows = 69517 - 66638,
               na.strings = '?')

# Time formatting

df$Timestamp <- paste(df$Date,df$Time, sep=' ')
df$Timestamp <- strptime(df$Timestamp,format='%d/%m/%Y %H:%M:%S')
