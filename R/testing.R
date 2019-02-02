iris %>% ggplot(aes(x = Sepal.Length, y = Sepal.Width, colour = Species)) + geom_point() + scale_color_redbull("rbyellowgrey")
