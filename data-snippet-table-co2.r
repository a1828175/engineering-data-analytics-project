# Description: Creates a table showing snippet of data for co2.

# Create the snippet table
kable(CO2[101:103,], 
      col.names = c("Year", "Month", "Day", "Date", "Concetration (ppb)", 
                    "Standard Deviation (ppb)", "Growth Rate (ppm/yr)", "Source")
)
