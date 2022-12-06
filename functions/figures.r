save_graph1_png <- function(penguins_now_clean,
                                   filename, size, res, scaling){
    agg_png("figures/penguins_regression1_25x15.png", 
            width   =  25, 
            height  =  15, 
            units   =  "cm", 
            res     =  600, 
            scaling =  1.4)
    penguins_regression1 <- plot_penguin_regression1(penguins_now_clean)
    print(penguins_regression1)
    dev.off()
}

save_graph2_png <- function(penguins_now_clean,
                            filename, size, res, scaling){
  agg_png("figures/penguins_regression2_30x15.png", 
          width   =  30, 
          height  =  15, 
          units   =  "cm", 
          res     =  600, 
          scaling =  1.4)
  penguins_regression2 <- plot_penguin_regression2(penguins_now_clean)
  print(penguins_regression2)
  dev.off()
}