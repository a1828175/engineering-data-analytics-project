# Description: Produces a growth rate over time plot for co2

# Define variables
growthRate = CO2$GR.ppm.yr.[7:length(CO2$GR.ppm.yr.)]
Date = CO2$DATE[7:length(CO2$DATE)]

# Produce plot
ggplot() +
  geom_point(aes(x = Date, y = growthRate), size = 1) +
  labs(x = "Date (Years)", y = "Growth Rate (ppm/year)") +
  geom_smooth(aes(x = Date, y = growthRate), method='lm', 
              formula= y~x, se=FALSE, color = "Red") +
  scale_x_continuous(n.breaks=7) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
