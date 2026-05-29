# Description: Produces qq plot for n2o before year 2000

# Plot Graph
ggplot(n2o_b4_2000, aes(sample = GR)) +   
  stat_qq(color = "lightblue") +   
  stat_qq_line(color = "gray") +   
  theme_bw()
