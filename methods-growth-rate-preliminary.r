# Description: Preliminary data organisation for growth rate analysis

# Extract DATE and GR
df_co2 <- data.frame(DATE = CO2$DATE, GR = CO2$GR.ppm.yr., 
                     Gas = rep("CO2", length(CO2$DATE)))
df_ch4 <- data.frame(DATE = CH4$DATE, GR = CH4$GR.ppm.yr., 
                     Gas = rep("CH4", length(CH4$DATE)))
df_n2o <- data.frame(DATE = N2O$DATE, GR = N2O$GR.ppm.yr., 
                     Gas = rep("N2O", length(N2O$DATE)))

# Combine into one dataset
combined_gr <- rbind(df_co2, df_ch4, df_n2o)

#Split CO2 
co2_b4_2000 <- subset(df_co2, DATE < 2000 & !is.na(GR))
co2_af_2000 <- subset(df_co2, DATE >= 2000 & !is.na(GR))

#Split CH4 
ch4_b4_2000 <- subset(df_ch4, DATE < 2000 & !is.na(GR))
ch4_af_2000 <- subset(df_ch4, DATE >= 2000 & !is.na(GR))

#Split N2O 
n2o_b4_2000 <- subset(df_n2o, DATE < 2000 & !is.na(GR))
n2o_af_2000 <- subset(df_n2o, DATE >= 2000 & !is.na(GR))
