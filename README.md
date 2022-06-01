
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Neattools

<!-- badges: start -->
<!-- badges: end -->

The goal of neattools is to make certain data frame manipulations
easier.

## Installation

You can install the development version of neattools from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
#devtools::install_github("timovoskuilen/neattools")
library(neattools)
#> 
#> Attaching package: 'neattools'
#> The following object is masked from 'package:base':
#> 
#>     subset
```

## Functions

This package includes 4 functions, which will all be shown including
examples below.

The function **flip** flips the columns and rows from a dataframe:

``` r
head(mtcars, n = 2)
#>               mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4      21   6  160 110  3.9 2.620 16.46  0  1    4    4
#> Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4
flip(head(mtcars, n = 2))
#>      Mazda RX4 Mazda RX4 Wag
#> mpg      21.00        21.000
#> cyl       6.00         6.000
#> disp    160.00       160.000
#> hp      110.00       110.000
#> drat      3.90         3.900
#> wt        2.62         2.875
#> qsec     16.46        17.020
#> vs        0.00         0.000
#> am        1.00         1.000
#> gear      4.00         4.000
#> carb      4.00         4.000
```

the function \_\_ removecolumn\_\_ lets you remove a specific column
from a dataframe

``` r
head(layout, n = 2)
#>   WellId WellAddress Column Row     Drug R2ID Concentration Cells Type Control
#> 1      1          A1      1   1 Analyfyn   NA            NA    NA   NA      NA
#> 2     25          B1      1   2 Analyfyn   NA            NA    NA   NA      NA
removecolumn(head(layout, n =2), "Drug")
#> # A tibble: 2 × 9
#>   WellId WellAddress Column   Row R2ID  Concentration Cells Type  Control
#>    <dbl> <chr>        <dbl> <dbl> <lgl> <lgl>         <lgl> <lgl> <lgl>  
#> 1      1 A1               1     1 NA    NA            NA    NA    NA     
#> 2     25 B1               1     2 NA    NA            NA    NA    NA
```

the function **subset** lets you subset specific rows from a dataframe

``` r
head(layout, n = 2)
#> # A tibble: 2 × 10
#>   WellId WellAddress Column   Row Drug   R2ID  Concentration Cells Type  Control
#>    <dbl> <chr>        <dbl> <dbl> <chr>  <lgl> <lgl>         <lgl> <lgl> <lgl>  
#> 1      1 A1               1     1 Analy… NA    NA            NA    NA    NA     
#> 2     25 B1               1     2 Analy… NA    NA            NA    NA    NA
subset(head(layout, n = 2), 1)
#> # A tibble: 1 × 10
#>   WellId WellAddress Column   Row Drug   R2ID  Concentration Cells Type  Control
#>    <dbl> <chr>        <dbl> <dbl> <chr>  <lgl> <lgl>         <lgl> <lgl> <lgl>  
#> 1      1 A1               1     1 Analy… NA    NA            NA    NA    NA
```

the function **replacevalue** lets you replace a specific value in a
dataframe

``` r
head(layout, n = 5)
#> # A tibble: 5 × 10
#>   WellId WellAddress Column   Row Drug   R2ID  Concentration Cells Type  Control
#>    <dbl> <chr>        <dbl> <dbl> <chr>  <lgl> <lgl>         <lgl> <lgl> <lgl>  
#> 1      1 A1               1     1 Analy… NA    NA            NA    NA    NA     
#> 2     25 B1               1     2 Analy… NA    NA            NA    NA    NA     
#> 3     49 C1               1     3 Analy… NA    NA            NA    NA    NA     
#> 4     73 D1               1     4 Analy… NA    NA            NA    NA    NA     
#> 5     97 E1               1     5 Analy… NA    NA            NA    NA    NA
replacevalue(head(layout, n = 5), "Drug", "Analyfyn", "Test")
#> # A tibble: 5 × 10
#>   WellId WellAddress Column   Row Drug  R2ID  Concentration Cells Type  Control
#>    <dbl> <chr>        <dbl> <dbl> <chr> <lgl> <lgl>         <lgl> <lgl> <lgl>  
#> 1      1 A1               1     1 Test  NA    NA            NA    NA    NA     
#> 2     25 B1               1     2 Test  NA    NA            NA    NA    NA     
#> 3     49 C1               1     3 Test  NA    NA            NA    NA    NA     
#> 4     73 D1               1     4 Test  NA    NA            NA    NA    NA     
#> 5     97 E1               1     5 Test  NA    NA            NA    NA    NA
```

## Data

### layout

A dataset containing a made up 384 well plate layout for drug screening.

## Credits

Functions were written by Timo Voskuilen
