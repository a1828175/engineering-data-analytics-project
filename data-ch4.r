# Description: Plots concentration over time for ch4.

# Importing Data
CH4 <- read.csv('data/CH4-data.csv')
CO2 <- read.csv('data/CO2-data.csv')
N2O <- read.csv('data/N2O-data.csv')

# Defining x and y variables
Date = CH4$DATE
Concentration = CH4$CH4.ppb.

# Creating ggplot
ggplot() +
  geom_path(aes(x = Date, y = Concentration)) +
  labs(x = "Date (Years)", y = "Concentration (ppb)") +
  scale_x_continuous(n.breaks=8) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
