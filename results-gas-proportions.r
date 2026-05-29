# Description: Calculates the change in ratio over time and produces a plot

# Combining data by date 
combinedData <- merge(CO2,CH4, by=c("DATE"), all=F)
combinedData <- merge(N2O,combinedData, by=c("DATE"), all=F)

# Create variables for each focus item
Date = combinedData$DATE
CO2Concentration = combinedData$CO2.ppm.
N2OConcentration = combinedData$N2O.ppb. / 1000
CH4Concentration = combinedData$CH4.ppb. / 1000

# Calculating Concentrations
totalConcentration = CO2Concentration + N2OConcentration + CH4Concentration

# Calculating Ratios
CO2Ratio = (CO2Concentration/totalConcentration) 
N2ORatio = (N2OConcentration/totalConcentration) 
CH4Ratio = (CH4Concentration/totalConcentration) 

# Calculating Ratio Change In Percentage
CO2RatioChange = 0
for (x in 1:(length(CO2Ratio)-1)) {
  CO2RatioChange[x] = ((CO2Ratio[x+1] - CO2Ratio[x])/CO2Ratio[x])*100
}
N2ORatioChange = 0
for (x in 1:(length(N2ORatio)-1)) {
  N2ORatioChange[x] = ((N2ORatio[x+1] - N2ORatio[x])/N2ORatio[x])*100
}
CH4RatioChange = 0
for (x in 1:(length(CH4Ratio)-1)) {
  CH4RatioChange[x] = ((CH4Ratio[x+1] - CH4Ratio[x])/CH4Ratio[x])*100
}

# Plotting Results
ggplot() +
  geom_path(aes(x = Date[2:length(Date)], y = CO2RatioChange, color = "CO2")) +
  geom_path(aes(x = Date[2:length(Date)], y = N2ORatioChange, color = "N2O")) +
  geom_path(aes(x = Date[2:length(Date)], y = CH4RatioChange, color = "CH4")) +
  theme(legend.position = "bottom") +
  labs(x = "Date (Years)", y = "Change In Greenhouse Gas Ratio (%)", color = "Gas") +
  scale_x_continuous(n.breaks=13) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
