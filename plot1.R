

## Read data sets
NEI <- readRDS("./summaryscc_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")

## Calculate total emission
tot.PM25yr <- tapply(NEI$Emissions, NEI$year, sum)

### Plot to png
png("plot1.png")
plot(names(tot.PM25yr), tot.PM25yr, type="l", xlab = "Year", ylab = expression
     ("Total" ~ PM[2.5] ~"Emissions (tons)"), main = expression("Total US" ~ 
                                                                        PM[2.5] ~ "Emissions by Year"))
dev.off()