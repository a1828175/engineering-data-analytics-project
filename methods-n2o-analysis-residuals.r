# Description: Produces a residual plot for the growth rate of n2o

# Define variables
growthRate = N2O$GR.ppm.yr.[29:length(N2O$GR.ppm.yr.)]
Date = N2O$DATE[29:length(N2O$DATE)]

# Produce plot
ggplot(lm(formula = growthRate ~ Date), aes(.fitted, .resid)) +
  geom_point(size = 1) +
  geom_hline(yintercept = 0, color = "Red")+
  labs(x='Fitted Values', y='Residuals') +
  theme_bw()
