library(ggplot2)

out_dir <- file.path(Sys.getenv("QUARTO_PROJECT_OUTPUT_DIR", "_submission"), "submission")
dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)

plot_point_whisker <- readRDS("data/shared_objects_lit.rds")$plot_point_whisker

ggsave(
  file.path(out_dir, "figure-1.tiff"),
  plot_point_whisker,
  device = "tiff",
  width = 5,
  height = 3,
  units = "in",
  dpi = 300,
  compression = "lzw"
)
