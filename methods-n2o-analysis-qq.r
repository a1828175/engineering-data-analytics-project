# Description: Produces a qq plot for the growth rate of n2o

# Define variables
growthRate = N2O$GR.ppm.yr.[29:length(N2O$GR.ppm.yr.)]
Date = N2O$DATE[29:length(N2O$DATE)]

# Produce plot
ggplot() +   
  stat_qq(aes(sample = growthRate), size = 1) +   
  stat_qq_line(aes(sample = growthRate), color = "Red") +   
  theme_bw()
