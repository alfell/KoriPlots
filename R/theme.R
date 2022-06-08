#' koriPlots Theme Function
#'
#' @description Function providing a Theme that helps you make beautiful Graphs in ggplot2.
#'
#' @param base_size Numeric value which defines base font size, given in pts. Default is 16.
#'
#' @param base_family Character string which defines base font family.
#'
#' @param base_line_size Numeric value that determines the base line size in the plot. Default is base_size/50.
#'
#' @param base_rect_size Numeric value that determines the base rect size in the plot. Default is base_size/50.
#'
#' @param grid_lines Character value defines on which axis the grid lines appear. Default is on both axes.
#'
#' @examples
#' # Default Parameter
#' ggplot(mtcars, aes(x = mph, y = cyl)) +
#'    koriPlot()
#'
#' # Base size = 18 and grid_lines on x axis
#' ggplot(mtcars, aes(x = mph, y = cyl)) +
#'    koriPlot(base_size = 18, grid_lines = "x")
#'
#' @export
#' @import ggplot2 dplyr broom
#' @importFrom gridExtra arrangeGrob
koriPlot <- function(base_size = 16,
                     base_family = "",
                     base_line_size = base_size/50,
                     base_rect_size = base_size/50,
                     grid_lines = "x",
                     legend = "right") {

  `%notin%` <- Negate(`%in%`)
  legendPositions <- c("none", "bottom", "top", "right", "left")
  grids <- c("x", "y")

  # Value must be numeric
  if (!is.character(grid_lines) | !is.character(legend)) {
    stop("Value must be character.")

    # Legend must be one of legendPositions
  } else if (legend %notin% legendPositions) {
    warning <- c('Incorrect legend position. Please choose one of the following:\n')
    stop(cat(warning, legendPositions, sep = "\n"))

    # Grid_lines must be either "x" or "y"
  } else if (grid_lines %notin% grids) {
    warning <- c('Incorrect axis for grid_lines. Please choose one of the following:\n')
    stop(cat(warning, grids, sep = "\n"))

    # If grid_lines and legend are missing
  } else if (missing(grid_lines)) {

      theme_bw(
        base_size = base_size,
        base_line_size = base_line_size,
        base_rect_size = base_rect_size
      ) %+replace%

      theme(

        # Title
        plot.title = element_text(
          hjust = 0,
          size = rel(1),
          margin = margin(t = 0, r = 0, b = 5, l = 0)
        ),

        # Subtitle
        plot.subtitle = element_text(
          hjust = 0,
          size = rel(0.75),
          margin = margin(t = 0, r = 0, b = 5, l = 0)
        ),

        # Caption
        plot.caption = element_text(
          hjust = 0,
          size = rel(0.55),
          margin = margin(t = 20, r = 0, b = 0, l = 0)
        ),

        # Axis Title X
        axis.title.x = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75),
          margin = margin(t = 20, r = 0, b = 0, l = 0),
        ),

        # Axis Title y
        axis.title.y = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75),
          margin = margin(t = 0, r = 20, b = 0, l = 0),
          angle = 90
        ),

        # Axis Text
        axis.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),

        # Axis Ticks
        axis.ticks = element_line(
          color = "grey",
          size = rel(0.55)
        ),

        # Grid Lines
        panel.grid.major = element_line(color = "grey",
                                        linetype = "solid",
                                        size = rel(0.75)
        ),
        panel.grid.minor = element_blank(),
        panel.border = element_rect(colour = "black", fill = NA),


        # Legend
        legend.position = legend,
        legend.title = element_text(hjust = 0,
                                    size = rel(0.75),
                                    color = rgb(105, 105, 105, maxColorValue = 255)),
        legend.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),

        # Strips
        strip.background = element_rect(
          color = NA,
          fill = NA,
          size = rel(0.75)
        ),

        complete = TRUE
      )

    # If grid_lines == "y"
  } else if (grid_lines == "y") {

    theme_bw(
      base_size = base_size,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ) %+replace%

      theme(

        # Title
        plot.title = element_text(
          hjust = 0,
          size = rel(1),
          margin = margin(t = 0, r = 0, b = 5, l = 0)
        ),

        # Subtitle
        plot.subtitle = element_text(
          hjust = 0,
          size = rel(0.75),
          margin = margin(t = 0, r = 0, b = 5, l = 0)
        ),

        # Caption
        plot.caption = element_text(
          hjust = 0,
          size = rel(0.55),
          margin = margin(t = 20, r = 0, b = 0, l = 0)
        ),

        # Axis Title X
        axis.title.x = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75),
          margin = margin(t = 20, r = 0, b = 0, l = 0),
        ),

        # Axis Title y
        axis.title.y = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75),
          margin = margin(t = 0, r = 20, b = 0, l = 0),
          angle = 90
        ),

        # Axis Text
        axis.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),

        # Axis Ticks
        axis.ticks = element_line(
          color = "grey",
          size = rel(0.55)
        ),

        # Grid Lines
        panel.grid.major.y = element_line(color = "grey",
                                        linetype = "solid",
                                        size = rel(0.75)
        ),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_rect(colour = "black", fill = NA),


        # Legend
        legend.position = legend,
        legend.title = element_text(hjust = 0,
                                    size = rel(0.75),
                                    color = rgb(105, 105, 105, maxColorValue = 255)),
        legend.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),

        # Strips
        strip.background = element_rect(
          color = NA,
          fill = NA,
          size = rel(0.75)
        ),

        complete = TRUE
      )

    # If grid_lines == "x"
  } else if (grid_lines == "x") {

    theme_bw(
      base_size = base_size,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ) %+replace%

      theme(

        # Title
        plot.title = element_text(
          hjust = 0,
          size = rel(1),
          margin = margin(t = 0, r = 0, b = 5, l = 0)
        ),

        # Subtitle
        plot.subtitle = element_text(
          hjust = 0,
          size = rel(0.75),
          margin = margin(t = 0, r = 0, b = 5, l = 0)
        ),

        # Caption
        plot.caption = element_text(
          hjust = 0,
          size = rel(0.55),
          margin = margin(t = 20, r = 0, b = 0, l = 0)
        ),

        # Axis Title X
        axis.title.x = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75),
          margin = margin(t = 20, r = 0, b = 0, l = 0),
        ),

        # Axis Title y
        axis.title.y = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75),
          margin = margin(t = 0, r = 20, b = 0, l = 0),
          angle = 90
        ),

        # Axis Text
        axis.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),

        # Axis Ticks
        axis.ticks = element_line(
          color = "grey",
          size = rel(0.55)
        ),

        # Grid Lines
        panel.grid.major.x = element_line(color = "grey",
                                          linetype = "solid",
                                          size = rel(0.75)
        ),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_rect(colour = "black", fill = NA),

        # Legend
        legend.position = legend,
        legend.title = element_text(hjust = 0,
                                    size = rel(0.75),
                                    color = rgb(105, 105, 105, maxColorValue = 255)),
        legend.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),

        # Strips
        strip.background = element_rect(
          color = NA,
          fill = NA,
          size = rel(0.75)
        ),

        complete = TRUE
      )
  }
}
