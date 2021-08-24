SCC <- data.table::as.data.table(x = readRDS(file = "Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "summarySCC_PM25.rds"))

BaltNEI <- NEI[fips == "24510", lapply(sum, na.rm = TRUE), by = year]

barplot(BaltNEI[, Emissions]
        , col = "Blue"
        , names = BaltNEI[, year]
        , xlab = "Years", ylab = "Emissions (tons)"
        , main = "Emissions in Baltimore")
  