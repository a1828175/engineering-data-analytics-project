# Description: Produces qq plot for co2 after year 2000

# Plot Graph
ggplot(co2_af_2000, aes(sample = GR)) +   
  stat_qq(color = "green") +   
  stat_qq_line(color = "gray") +   
  theme_bw()
