## Overview

KoriPlots is a package providing Themes that help you make beautiful Graphs in ggplot2.

## Installation

The easiest way to get KorPlots is to install in from this repo:

```{r, eval = FALSE}
# install.packages("devtools")
devtools::install_github("alfell/KoriPlots")
```
## Usage

```{r, message = FALSE}
# Load Package
library(KoriPlots)

# Make Plot (default no grid_lines)
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    KoriPlot()
    
# Grid Lines on x-Axis
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    KoriPlot(grid_lines = "x")
    
# Grid Lines on y-Axis and other Base Size
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    KoriPlot(grid_lines = "y", base_size = 12)
```

## Getting help

If you encounter a bug, please contact the author.

