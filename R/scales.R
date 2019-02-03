#' Return a function which interpolates colours using colorRampPalette
#' This is used for continuous colour scales
redbull_palette_interpolate <- function(palette = "redbull", reverse = FALSE, ...) {
  pal <- redbull_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}

#' Returns a function which provides a discrete redbull colour palette
#'
#' @param palette Character name of palette from redbull_palettes
#' @param reverse Boolean indicating whether palette should be reversed
#' @param rep Boolean indicating desired behaviour when there are more levels than available palette options
redbull_palette_discrete <- function(palette = "redbull", reverse = FALSE, rep = TRUE, ...) {
  pal <- redbull_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  # Return a function which takes an integer value
  function(n) {
    palette_size <- length(pal)

    if(n > palette_size) {
      if(rep) unname(rep(pal, n)) else unname(c(pal[seq_len(palette_size)], rep(pal[palette_size], n - palette_size)))
    }
    else {
      unname(pal[seq_len(n)])
    }
  }
}


#' Colour scale constructor for Red Bull colours
#'
#' @param palette Character name of Red Bull palette
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param rep Boolean indicating whether the whole palette should be repeated (TRUE) or just the final value (FALSE)
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_color_redbull <- function(palette = "redbull", discrete = TRUE, reverse = FALSE, rep = TRUE, ...) {

  if (discrete) {
    ggplot2::discrete_scale(aesthetics = "colour", scale_name = paste0("redbull_", palette), palette = redbull_palette_discrete(palette, reverse, rep))
  }

  else {
    pal <- redbull_palette_interpolate(palette = palette, reverse = reverse)
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' @rdname scale_color_redbull
#' @export
scale_colour_redbull <- scale_color_redbull

#' Colour scale constructor for Red Bull colours
#'
#' @param palette Character name of Red Bull palette
#' @param discrete Boolean indicating whether colour aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param rep Boolean indicating whether the whole palette should be repeated (TRUE) or just the final value (FALSE)
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_fill_redbull <- function(palette = "redbull", discrete = TRUE, reverse = FALSE, rep = TRUE, ...) {

  if (discrete) {
    ggplot2::discrete_scale("fill", scale_name = paste0("redbull_", palette), palette = redbull_palette_discrete(palette, reverse, rep))
  }

  else {
    pal <- redbull_palette_interpolate(palette = palette, reverse = reverse)
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}
