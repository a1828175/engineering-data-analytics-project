# Description: Plots concentration over time for co2.

# Importing Data
CH4 <- read.csv('data/CH4-data.csv')
CO2 <- read.csv('data/CO2-data.csv')
N2O <- read.csv('data/N2O-data.csv')

# Defining x and y variables
Date = CO2$DATE
Concentration = CO2$CO2.ppm.

# Creating ggplot
ggplot() +
  geom_path(aes(x = Date, y = Concentration)) +
  labs(x = "Date (Years)", y = "Concentration (ppm)") +
  scale_x_continuous(n.breaks=9) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
