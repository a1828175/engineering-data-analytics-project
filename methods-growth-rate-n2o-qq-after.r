# Description: Produces qq plot for n2o after year 2000

# Plot Graph
ggplot(n2o_af_2000, aes(sample = GR)) +   
  stat_qq(color = "blue") +   
  stat_qq_line(color = "gray") +   
  theme_bw()
