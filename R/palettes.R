#' Extract redbull colours from as hex codes
redbull_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (redbull_colours)

  redbull_colours[cols]
}

#' Extract bloomberg colours from as hex codes
bloomberg_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (bloomberg_colors)

  bloomberg_colors[cols]
}

#' Palette definitions for redbull ggplot2 scales
redbull_palettes <- list(
  `redbull` = redbull_cols("red", "blue", "yellow", "light grey"),
  `rbfull` = redbull_cols(),
  `rbcool` = redbull_cols("blue", "lightest blue"),
  `rbwarm` = redbull_cols("red", "lightest red"),
  `rbyellowgrey` = redbull_cols("yellow", "light grey"),
  `bloomberg` = bloomberg_cols("blue", "green", "pink", "yellow", "hot pink", "dark blue", "orange", "dark green"),
  `bloombergfull` = bloomberg_cols()
  )
