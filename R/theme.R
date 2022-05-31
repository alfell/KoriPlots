#' koriPlot Function
#'
#' @description Styling function for Kori's beautiful ggplots.
#'
#' @param base_size Numeric value that determines the base size of the plot. Default is 16.
#'
#' @param base_line_size Numeric value that determines the base line size in the plot. Default is base_size/50.
#'
#' @param base_rect_size Numeric value that determines the base rect size in the plot. Default is base_size/50.
#'
#' @param grid_lines Character value that determines on which axis the grid lines appear. Default is on both axes.
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
                     grid_lines = "x") {

  # Value must be numeric
  if (!is.character(grid_lines)) {
    stop("Value for grid_lines must be numeric")

    # Grids, when grid_lines = "y"
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
          margin = margin(t = 0, r = 0, b = 20, l = 0)
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
          size = rel(0.55)
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


        # Legend
        legend.position = "right",
        legend.title = element_blank(),
        legend.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),
        complete = TRUE
      )

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
          margin = margin(t = 0, r = 0, b = 20, l = 0)
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
          size = rel(0.55)
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


        # Legend
        legend.position = "right",
        legend.title = element_blank(),
        legend.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),
        complete = TRUE
      )

    # Grids, when grid_lines = "x"
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
          margin = margin(t = 0, r = 0, b = 20, l = 0)
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
          size = rel(0.55)
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


        # Legend
        legend.position = "right",
        legend.title = element_blank(),
        legend.text = element_text(
          color = rgb(105, 105, 105, maxColorValue = 255),
          size = rel(0.75)
        ),
        complete = TRUE
      )
  }
}
