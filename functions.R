
library(scales)
library(dplyr)
library(ggplot2)
library(patchwork)
library(latex2exp)
library(gt)
library(foreach)
library(doParallel)

theme_academic <- function() {
  theme_minimal(base_size = 12) +
    theme(
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      axis.line = element_line(color = "black"),
      axis.ticks = element_line(color = "black"),
      text = element_text(family = "sans"),
      plot.title = element_text(face = "bold", size = 14),
      strip.background = element_rect(fill = "white", color = "black")
    )
}
# Add scale_y_continuous(expand = expansion(mult = c(0, 0.05))) to plots 
# to ensure the Y axis starts at 0 and bars touch the X axis.

scale_fill_academic <- function() {
  scale_fill_viridis_d(option = "magma", begin = 0.3, end = 0.8)
}


set.seed(20)


symmetric_fill_scale <- function(limit, type="fill") {
  
  if(type=="fill"){
    scale_fill_gradientn(
      colours = c("darkblue", "blue", "dodgerblue", "white", "orange", "red", "darkred"),
      values  = scales::rescale(c(-limit, -limit/2, 0, limit/2, limit)),
      limits  = c(-limit, limit)
    )
  }else{
    scale_colour_gradientn(
      colours = c("darkblue", "blue", "dodgerblue", "white", "orange", "red", "darkred"),
      values  = scales::rescale(c(-limit, -limit/2, 0, limit/2, limit)),
      limits  = c(-limit, limit)
    )
  }
}
