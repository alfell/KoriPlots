![KoriPlotsKlein](https://user-images.githubusercontent.com/44610225/175503801-622eae06-d01c-4d86-a136-9599a370843b.jpg)

# KoriPlots

KoriPlots is an R package providing themes that help you make beautiful graphs with ggplot2. KoriPlots contains one main function called `koriPlot()`. Main arguments are:

- `base_size`: Numeric value which defines base font size, given in pts. Default is 16.
- `base_family`: Character string which defines base font family.
- `base_line_size`: Numeric value that defines base size for line elements. Default is base_size/50.
- `base_rect_size`: Numeric value that defines base size for rect elements. Default is base_size/50.
- `base_rect_size`: Numeric value that defines base size for rect elements. Default is base_size/50.
- `grid_lines`: Character value that defines on which axis the grid lines appear. Default is both axes.
- `legend`: Character value that defines on where the legend is placed ("none", "bottom", "top", "left" or "right"). Default is "right".

## Installation

The easiest way to get KorPlots is to install in from this repo:

```{r, eval = FALSE}
# install.packages("devtools")
devtools::install_github("alfell/KoriPlots")
```
## Version
To check your version of KoriPlots, run:
```{r, echo = TRUE, message = FALSE, eval = FALSE}
packageVersion("KoriPlots")
```

## Examples

```{r, message = FALSE}
# Load Package
library(KoriPlots)

# Make Plot (default no grid_lines)
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    koriPlot()
    
# Grid Lines on x-Axis
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    koriPlot(grid_lines = "x")
    
# Grid Lines on y-Axis and other Base Size
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    koriPlot(grid_lines = "y", base_size = 12)
```

## Getting help

If you encounter a bug, please contact the author.

