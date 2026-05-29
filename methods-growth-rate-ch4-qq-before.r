# Description: Produces qq plot for ch4 before year 2000

# Plot Graph
ggplot(ch4_b4_2000, aes(sample = GR)) +   
  stat_qq(color = "lightpink") +   
  stat_qq_line(color = "gray") +   
  theme_bw()
