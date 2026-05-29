# Description: Plots a example qq plot

# Plots graph
ggplot(subset(CH4dataset, YYYY == 2020), aes(sample = CH4.ppb.)) +
  stat_qq() +
  stat_qq_line(color = "red") +
  theme_bw()
