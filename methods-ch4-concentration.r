# Description: Produces plot of co2 concentration over time with trendline

# Defining Variables
Date = CH4$DATE
Concentration = CH4$CH4.ppb.

# Plotting graph
ggplot() +
  geom_path(aes(x = Date, y = Concentration)) +
  labs(x = "Date (Years)", y = "Concentration (ppb)") +
  geom_smooth(aes(x = Date, y = Concentration), 
              method = "loess", color = "red", se = FALSE) +
  scale_x_continuous(n.breaks=9) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
