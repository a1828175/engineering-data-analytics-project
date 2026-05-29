# Description: Plots the montly changes of concentration for ch4

# Organise data
CH4dataset$CH4.ppb. <- as.numeric(CH4dataset$CH4.ppb.)
CH4dataset <- CH4dataset %>%
  group_by(YYYY) %>%
  arrange(MM) %>%
  mutate(
    monthly_change = CH4.ppb. - lag(CH4.ppb.)   
    # the CH4 of this month - last month
  ) %>%
  ungroup()
CH4_monthchange <- CH4dataset[-c(1:43), ]
CH4_monthchange <- na.omit(CH4_monthchange)

# Plot graph
ggplot(CH4_monthchange,
       aes(x = MM,
           y = monthly_change,
           fill = as.factor(YYYY))) +
  geom_col(position = "dodge") +
  labs(title = "Monthly CH4 Change for each Year",
       x = "Month",
       y = "Change From Previous Month",
       fill = "Year") +
  scale_x_continuous(breaks = 1:12) +
  theme_minimal()
