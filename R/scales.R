#' Color scale constructor for drsimonj colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_color_redbull <- function(palette = "redbull", discrete = TRUE, reverse = FALSE, ...) {

  if (discrete) {
    pal <- redbull_palettes[[palette]]
      function(n) {
        if(n > length(pal)) {
          c(pal[seq_len(n)], rep(pal[length(pal)], n - length(pal)))
        }
        pal[seq_len(n)]
      }
  }

  else {
    pal <- redbull_pals(palette = palette, reverse = reverse)
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' @rdname scale_colour_redbull
#' @export
scale_colour_redbull <- scale_color_redbull
