plot_penguin_regression1 <- function(penguins_now_clean){
  penguins_now_clean%>%
  ggplot(aes(x = body_mass_g, y = flipper_length_mm)) + 
    geom_point(colour = "orange") + geom_smooth(method="lm") + 
    labs(x="Body Mass (g)", y="Flipper Length (mm)", 
         title = "Relationship between body mass and flipper length in 3 species of penguin") + 
    theme_classic()
}



plot_penguin_regression2 <- function(penguins_now_clean){
  penguins_now_clean%>%
  ggplot(aes(x = body_mass_g, y = flipper_length_mm, colour = species)) + 
    geom_point(size = 2, alpha = 0.8) + geom_smooth(method = "lm", se = FALSE) + 
    theme_classic() + 
    scale_colour_manual(values = c("darkorange","darkblue","hotpink")) + 
    labs(title = "Body mass and flipper length in Adelie, Chinstrap and Gentoo Penguins", 
         x = "Body Mass (g)", y = "Flipper Length (mm)", colour = "Penguin species") 
}
  

