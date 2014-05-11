source.and.set <- function(x) {
  setwd(dirname(x))
  source(x)
}

source.and.set("load_and_prepare_data.R")

# Plot 4


png(file="../output/plot4.png", width=480,height=480)


# Pane graphics

par(mfrow = c(2, 2))

plot(
  df$Timestamp,
  df$Global_active_power,
  ylab = "Global Active Power (kilowatts)",
  xlab = '',
  type = "l",
  lwd = 1,
  col = "black"
)

plot(
  df$Timestamp,
  df$Voltage,
  ylab = "Voltage",
  xlab = 'datetime',
  type = "l",
  lwd = 1,
  col = "black"
)

# Submeterings

# Submetering 1

plot(
  df$Timestamp,
  df$Sub_metering_1,
  ylab = "Energy by sub metering",
  xlab = '',
  type = 'n'
)

# Submetering 1

lines(
  df$Timestamp,
  df$Sub_metering_1,
  lwd = 1,
  col = "black"
)


# Submetering 2

lines(
  df$Timestamp,
  df$Sub_metering_2,
  lwd = 1,
  col = "red"
)

# Submetering 3

lines(
  df$Timestamp,
  df$Sub_metering_3,
  lwd = 1,
  col = "blue"
)

# Legend

legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"),
       lty = 1,
       lwd = 1,
       bty = "n")

plot(
  df$Timestamp,
  df$Global_reactive_power,
  ylab = "Global_reactive_power",
  xlab = 'datetime',
  type = "l",
  lwd = 1,
  col = "black"
)

dev.off()