# Description: Creates a table showing snippet of data for ch4.

# Create the snippet table
kable(CH4[101:103,], 
      col.names = c("Year", "Month", "Day", "Date", "Concetration (ppb)", 
                    "Standard Deviation (ppb)", "Growth Rate (ppm/yr)", "Source")
)
