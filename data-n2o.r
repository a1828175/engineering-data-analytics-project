# Description: Plots concentration over time for n2o.

# Importing Data
CH4 <- read.csv('data/CH4-data.csv')
CO2 <- read.csv('data/CO2-data.csv')
N2O <- read.csv('data/N2O-data.csv')

# Defining x and y variables
Date = N2O$DATE
Concentration = N2O$N2O.ppb.

# Creating ggplot
ggplot() +
  geom_path(aes(x = Date, y = Concentration)) +
  labs(x = "Date (Years)", y = "Concentration (ppb)") +
  scale_x_continuous(n.breaks=8) +
  scale_y_continuous(n.breaks=10) +
  theme_bw()
