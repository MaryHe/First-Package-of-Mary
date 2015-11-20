<!-- README.md is generated from README.Rmd. Please edit that file -->
This is a package built for STAT545 homework08. It contains several functions mainly used to deal with factors. Here is an example of one of the function `fbind`

``` r
library(MaryFactors)
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: ctrl setosa trt1 trt2 versicolor virginica
```
