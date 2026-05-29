# Description: Produces qq plot for ch4 after year 2000

# Plot Graph
ggplot(ch4_af_2000, aes(sample = GR)) +   
  stat_qq(color = "red") +   
  stat_qq_line(color = "gray") +   
  theme_bw()
