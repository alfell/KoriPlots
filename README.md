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
library(KoriPlots)
ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
    geom_point() +
    koriPlot()
```

## Getting help

If you encounter a bug, please contact the author.

