<!-- README.md is generated from README.Rmd. Please edit that file -->
This is a package built for STAT545 homework08. It contains several functions mainly used to deal with factors. Here is an example of one of the function `fbind`

``` r
library(MaryFactors)
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: ctrl setosa trt1 trt2 versicolor virginica
```

Function `fbind`
----------------

### Description

This function conbines levels of two vectors. Numeric vectors will be treated as factors

### Example

    fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])

    a <- c(1, 2)
    b <- c('a', 'b')
    fbind(a, b)

    #Cannot accept weird input
    b <- as.data.frame(b)
    fbind(a, b)

Function `freq_out`
-------------------

### Description

This function makes a frequency table for a factor.

### Examples

    freq_out(iris$Species)

    #Does not accept objects other than factors
    a <- c(1:10)
    freq_out(a)

Function `detect_char`
----------------------

### Description

This function tires to detect if a variable could be of class character. It takes in a vector:

-   If it's numeric, print message "This is a numeric vector"
-   If it's character, print message "This is already a character vector"
-   If it's factor, check if number of distinct values equals length. If so, print a message informing the user that this vector could be of class character
-   In addition, if it's suspected to be character and the argument `convert` is set to be `TRUE`, then return a the vector with its class redefined to be character

### Examples

    x <- c(1, 2, 3)
    detect_char(x)

    x <- c("This", "is", "actually", "a", "sentence")
    detect_char(x)

    x <- as.factor(x)
    class(x)
    detect_char(x)
    x <- detect_char(x, convert = T)
    x
    class(x)

    #Cannot accept weird input
    x <- as.data.frame(x)
    detect_char(x)

Fucntion `desc_reorder`
-----------------------

### Description

This function reorders factor levels according to the descending order of the provided corresponding numeric variable.

### Examples

    x <- factor(c('a', 'b', 'c', 'd'))
    y <- c(2, 1, 4, 3)
    levels(x)
    x <- desc_reorder(x, y)
    levels(x)

    boxplot(Sepal.Width ~ Species, data = iris)
    boxplot(Sepal.Width ~ desc_reorder(Species, Sepal.Width), data = iris)

    #The first argument must be factor and the second must be numeric
    x <- c(2, 1, 4, 3)
    y <- factor(c('a', 'b', 'c', 'd'))
    desc_reorder(x, y)
    x <- as.factor(x)
    desc_reorder(x, y)
