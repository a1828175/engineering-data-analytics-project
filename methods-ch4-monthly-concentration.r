# Description: Produces a plot of concenration of co2 sorted by month

# Organise by month
CH4dataset = CH4
CH4_clean <- CH4dataset %>%
  group_by(YYYY) %>%
  filter(n_distinct(MM) == 12) %>%   
  ungroup()

last_points <- CH4_clean %>%
  group_by(YYYY) %>%
  filter(MM == max(MM))

# Plot graph
ggplot(CH4_clean, aes(x = MM, y = CH4.ppb., group = YYYY,
                      color = factor(YYYY)
                       )) +
  geom_point(alpha = 0.8, size = 1) +
  geom_line() +
  scale_x_continuous(breaks = 1:12) +
  labs(x = "Month", y = "CH4 Concentration (ppb)", color = "Year") +
  guides(color = guide_legend(ncol = 4)) +
  theme_bw()
