#' Add redbull theme to ggplot chart
#'
#' This function allows you to add the redbull theme to your ggplot graphics.
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' theme_rb()

# theme_grey(base_size = base_size, base_family = base_family,
#            base_line_size = base_line_size, base_rect_size = base_rect_size) %+replace%
#   theme(,
#         panel.border = element_rect(fill = NA, colour = "grey20"),
#         panel.grid = element_line(colour = "grey92"),
#         panel.grid.minor = element_line(size = rel(0.5)),
#         strip.background = element_rect(fill = "grey85",
#                                         colour = "grey20"),
#         legend.key = element_rect(fill = "white", colour = NA),
#         complete = TRUE)

theme_rb <- function(base_size = 11, base_family = "Helvetica", base_line_size = base_size/22, base_rect_size = base_size/22)
{
  half_line <- base_size/2
  theme(line = element_line(colour = "black", size = base_line_size, linetype = 1, lineend = "butt"),
        rect = element_rect(fill = "white", colour = "black", size = base_rect_size, linetype = 1),
        text = element_text(family = base_family, face = "plain",
                            colour = "black", size = base_size, lineheight = 0.9,
                            hjust = 0.5, vjust = 0.5, angle = 0, margin = margin(),
                            debug = FALSE),
        #axis.line = element_blank(),
        axis.line.x = element_line(color="#222222", size = 0.75),
        axis.line.y = element_line(color="#222222", size = 0.75),
        axis.text = element_text(size = rel(0.7), colour = "grey30", family = base_family),
        axis.text.x = element_text(margin = margin(t = 0.8 * half_line/2), vjust = 1),
        axis.text.x.top = element_text(margin = margin(b = 0.8 * half_line/2), vjust = 0),
        axis.text.y = element_text(margin = margin(r = 0.8 * half_line/2), hjust = 1),
        axis.text.y.right = element_text(margin = margin(l = 0.8 * half_line/2), hjust = 0),
        axis.ticks = element_line(colour = "grey20"),
        axis.ticks.length = unit(half_line/2, "pt"),
        axis.title.x = element_text(margin = margin(t = half_line/2), vjust = 1, size = rel(0.9)),
        axis.title.x.top = element_text(margin = margin(b = half_line/2), vjust = 0),
        axis.title.y = element_text(angle = 90, margin = margin(r = half_line/2), vjust = 1, size = rel(0.9)),
        axis.title.y.right = element_text(angle = -90, margin = margin(l = half_line/2), vjust = 0),
        legend.background = element_blank(),
        legend.spacing = unit(2 * half_line, "pt"),
        legend.spacing.x = NULL,
        legend.spacing.y = NULL,
        legend.margin = margin(half_line,half_line, half_line, half_line),
        legend.key = element_rect(fill = "grey95", colour = "white"),
        legend.key.size = unit(1.2, "lines"),
        legend.key.height = NULL,
        legend.key.width = NULL,
        legend.text = element_text(size = rel(0.6), family = base_family),
        legend.text.align = NULL,
        legend.title = element_text(hjust = 0),
        legend.title.align = NULL,
        legend.position = "top",
        legend.direction = NULL,
        legend.justification = "center",
        legend.box = NULL,
        legend.box.margin = margin(0, 0, 0,0, "cm"),
        legend.box.background = element_blank(),
        legend.box.spacing = unit(2 * half_line, "pt"),
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid = element_line(colour = "white"),
        panel.grid.minor = element_blank(),
        panel.grid.major.y = ggplot2::element_line(color="#cbcbcb", size = 0.5, linetype = "dotted"),
        panel.grid.major.x = ggplot2::element_blank(),
        panel.spacing = unit(half_line, "pt"),
        panel.spacing.x = NULL,
        panel.spacing.y = NULL,
        panel.ontop = FALSE,
        strip.background = element_rect(fill = "grey85", colour = NA),
        strip.text = element_text(colour = "grey10", size = rel(0.8), margin = margin(0.8 * half_line, 0.8 * half_line, 0.8 * half_line, 0.8 * half_line)),
        strip.text.x = NULL,
        strip.text.y = element_text(angle = -90),
        strip.placement = "inside",
        strip.placement.x = NULL,
        strip.placement.y = NULL,
        strip.switch.pad.grid = unit(half_line/2, "pt"),
        strip.switch.pad.wrap = unit(half_line/2, "pt"),
        plot.background = element_rect(colour = "white"),
        plot.title = element_text(family = base_family, size = rel(1.2), hjust = 0,vjust = 1, margin = margin(b = half_line), face = "bold"),
        plot.subtitle = element_text(family = base_family, hjust = 0, vjust = 1, margin = margin(b = half_line)),
        plot.caption = element_text(size = rel(0.8), hjust = 1, vjust = 1, margin = margin(t = half_line), family = base_family, color = "#555555"),
        plot.tag = element_text(size = rel(1.2), hjust = 0.5, vjust = 0.5),
        plot.tag.position = "topleft",
        plot.margin = margin(half_line, half_line, half_line, half_line), complete = TRUE)
}
