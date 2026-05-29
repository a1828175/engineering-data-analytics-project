# Description: Produces a qq plot for the growth rate of co2

# Define variables
growthRate = CO2$GR.ppm.yr.[7:length(CO2$GR.ppm.yr.)]
Date = CO2$DATE[7:length(CO2$DATE)]

# Produce plot
ggplot() +   
  stat_qq(aes(sample = growthRate), size = 1) +   
  stat_qq_line(aes(sample = growthRate), color = "Red") +   
  theme_bw()
