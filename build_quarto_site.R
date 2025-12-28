#!/usr/bin/env Rscript

# RStudio custom build script to render the Quarto website
if (!requireNamespace("quarto", quietly = TRUE)) {
  stop("Package 'quarto' not installed. Run install.packages('quarto') first.")
}

quarto::quarto_render(input = ".")
