# Description: Produces a growth rate over time plot for n2o

# Define variables
growthRate = N2O$GR.ppm.yr.[29:length(N2O$GR.ppm.yr.)]
Date = N2O$DATE[29:length(N2O$DATE)]

# Produce plot
ggplot() +
  geom_point(aes(x = Date, y = growthRate), size = 1) +
  labs(x = "Date (Years)", y = "Growth Rate (ppm/year)") +
  geom_smooth(aes(x = Date, y = growthRate), method='lm', 
              formula= y~x, se=FALSE, color = "Red") +
  scale_x_continuous(n.breaks=7) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
