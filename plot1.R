SCC <- data.table::as.data.table(x = readRDS(file = "Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "summarySCC_PM25.rds"))

totalNEI <- NEI[, lapply(sum, na.rm = TRUE), by = year]

barplot(
  (totalNEI$Emissions),
  names.arg=totalNEI$year,
  xlab="Year",
  ylab="PM2.5 Emissions (tons)",
  main="Total PM2.5 Emissions over Time"
)
