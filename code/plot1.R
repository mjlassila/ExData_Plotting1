source.and.set <- function(x) {
  setwd(dirname(x))
  source(x)
}

source.and.set("load_and_prepare_data.R")



# Plot 1

png(file="../output/plot1.png", width=480,height=480, bg = "transparent")

hist(
  df$Global_active_power,
  xlab = "Global Active Power (kilowatts)",
  main ="Global Active Power",
  col = "red"
  )

dev.off()