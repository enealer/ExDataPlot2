SCC <- data.table::as.data.table(x = readRDS(file = "Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "summarySCC_PM25.rds"))

totalNEI <- NEI[, lapply(sum, na.rm = TRUE), by = year]

barplot(totalNEI[, Emissions]
        , col = "Orange"
        , names = totalNEI[, year]
        , xlab = "Years", ylab = "Emissions"
        , main = "Emissions over time")
