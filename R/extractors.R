#' Function to extract Red Bull colors as hex codes
#'
#' @param ... Character names of redbull_colours
#'
#' @export
redbull_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (redbull_colours)

  redbull_colours[cols]
}

#' Function to extract Bloomberg colors as hex codes
#'
#' @param ... Character names of bloomberg_colors
#'
#' @export
bloomberg_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (bloomberg_colors)

  bloomberg_colors[cols]
}

#' Return function to interpolate a Red Bull color palette
#'
#' @param palette Character name of palette in redbull_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
redbull_palette_interpolate <- function(palette = "redbull", reverse = FALSE, ...) {
  pal <- redbull_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

#' Return function to a Red Bull color palette
#'
#' @param palette Character name of palette in redbull_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
redbull_palette_discrete <- function(palette = "redbull", reverse = FALSE, ...) {
  pal <- redbull_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  function(n) {

    palette_size <- length(pal)

    if(n > palette_size) {
      unname(c(pal[seq_len(palette_size)], rep(pal[palette_size], n - palette_size)))
    }
    else {
      unname(pal[seq_len(n)])
    }

  }
}
