source.and.set <- function(x) {
  setwd(dirname(x))
  source(x)
}

source.and.set("load_and_prepare_data.R")


# Plot 2

png(file="../output/plot2.png", width=480,height=480, bg = "transparent")

plot(
  df$Timestamp,
  df$Global_active_power,
  ylab = "Global Active Power (kilowatts)",
  xlab = '',
  type = "l",
  lwd = 1,
  col = "black"
)

dev.off()