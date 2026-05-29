# Description: Produces a residual plot for the growth rate of co2

# Define variables
growthRate = CO2$GR.ppm.yr.[7:length(CO2$GR.ppm.yr.)]
Date = CO2$DATE[7:length(CO2$DATE)]

# Produce plot
ggplot(lm(formula = growthRate ~ Date), aes(.fitted, .resid)) +
  geom_point(size = 1) +
  geom_hline(yintercept = 0, color = "Red")+
  labs(x='Fitted Values', y='Residuals') +
  theme_bw()
