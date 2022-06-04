\name{koriPlot}
\alias{koriPlot}
\title{
koriPlots Theme Function
\description{
Function providing a Theme that helps you make beautiful Graphs in ggplot2.
}
\usage{
koriPlot(base_size = 16, base_family = "", base_line_size = base_size/50, base_rect_size = base_size/50, grid_lines = "x")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{base_size}{
Numeric value which defines base font size, given in pts. Default is 16.
}
  \item{base_family}{
Character string which defines base font family.
}
  \item{base_line_size}{
Numeric value that defines base size for line elements. Default is base_size/50.
}
  \item{base_rect_size}{
Numeric value that defines base size for rect elements. Default is base_size/50.
}
  \item{grid_lines}{
Character value that defines on which axis the grid lines appear. Default is both axes.
}
}

\author{
Alessandro Feller
}

\examples{
# Load Package
library(KoriPlots)

# Make Plot (default no grid_lines and legend = "right")
ggplot(data = mtcars,
       aes(x = mpg,
           y = disp,
           color = as.factor(cyl))) +
  geom_point() +
  koriPlot()

# Make Plot (grid_lines = "x")
ggplot(data = mtcars,
       aes(x = mpg,
           y = disp)) +
  geom_point() +
  koriPlot(grid_lines = "x")

# Make Plot (grid_lines = "y", legend = "bottom")
ggplot(data = mtcars,
       aes(x = mpg,
           y = disp,
           color = as.factor(cyl))) +
  geom_point() +
  facet_wrap(~carb,
             ncol = 3) +
  koriPlot(grid_lines = "y",
           legend = "bottom")
