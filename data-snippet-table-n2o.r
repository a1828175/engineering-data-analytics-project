# Description: Creates a table showing snippet of data for n2o.

# Create the snippet table
kable(N2O[101:103,], 
      col.names = c("Year", "Month", "Day", "Date", "Concetration (ppb)", 
                    "Standard Deviation (ppb)", "Growth Rate (ppm/yr)", "Source")
)
