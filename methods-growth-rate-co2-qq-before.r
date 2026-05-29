# Description: Produces qq plot for co2 before year 2000

# Plot Graph
ggplot(co2_b4_2000, aes(sample = GR)) +   
  stat_qq(color = "lightgreen") +   
  stat_qq_line(color = "gray") +   
  theme_bw()
