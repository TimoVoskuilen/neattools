
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
```

## Functions

This package includes 4 functions, which will all be shown including
examples below.

**Flip**: flips the columns and rows from a dataframe

``` r
library(neattools)
#> 
#> Attaching package: 'neattools'
#> The following object is masked from 'package:base':
#> 
#>     subset
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

**removecolumn**: removes a specific column from a dataframe

``` r
library(tidyverse)
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
#> ✔ ggplot2 3.3.6     ✔ purrr   0.3.4
#> ✔ tibble  3.1.7     ✔ dplyr   1.0.9
#> ✔ tidyr   1.2.0     ✔ stringr 1.4.0
#> ✔ readr   2.1.2     ✔ forcats 0.5.1
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
layout
#> # A tibble: 384 × 10
#>    WellId WellAddress Column   Row Drug  R2ID  Concentration Cells Type  Control
#>     <dbl> <chr>        <dbl> <dbl> <chr> <lgl> <lgl>         <lgl> <lgl> <lgl>  
#>  1      1 A1               1     1 Anal… NA    NA            NA    NA    NA     
#>  2     25 B1               1     2 Anal… NA    NA            NA    NA    NA     
#>  3     49 C1               1     3 Anal… NA    NA            NA    NA    NA     
#>  4     73 D1               1     4 Anal… NA    NA            NA    NA    NA     
#>  5     97 E1               1     5 Anal… NA    NA            NA    NA    NA     
#>  6    121 F1               1     6 Anal… NA    NA            NA    NA    NA     
#>  7    145 G1               1     7 Anal… NA    NA            NA    NA    NA     
#>  8    169 H1               1     8 Anal… NA    NA            NA    NA    NA     
#>  9    193 I1               1     9 Anal… NA    NA            NA    NA    NA     
#> 10    217 J1               1    10 Anal… NA    NA            NA    NA    NA     
#> # … with 374 more rows
removecolumn(layout, "Drug")
#> # A tibble: 384 × 9
#>    WellId WellAddress Column   Row R2ID  Concentration Cells Type  Control
#>     <dbl> <chr>        <dbl> <dbl> <lgl> <lgl>         <lgl> <lgl> <lgl>  
#>  1      1 A1               1     1 NA    NA            NA    NA    NA     
#>  2     25 B1               1     2 NA    NA            NA    NA    NA     
#>  3     49 C1               1     3 NA    NA            NA    NA    NA     
#>  4     73 D1               1     4 NA    NA            NA    NA    NA     
#>  5     97 E1               1     5 NA    NA            NA    NA    NA     
#>  6    121 F1               1     6 NA    NA            NA    NA    NA     
#>  7    145 G1               1     7 NA    NA            NA    NA    NA     
#>  8    169 H1               1     8 NA    NA            NA    NA    NA     
#>  9    193 I1               1     9 NA    NA            NA    NA    NA     
#> 10    217 J1               1    10 NA    NA            NA    NA    NA     
#> # … with 374 more rows
```

**subset**: lets you subset specific rows from a data frame

``` r
subset(layout, 6)
#> # A tibble: 1 × 10
#>   WellId WellAddress Column   Row Drug   R2ID  Concentration Cells Type  Control
#>    <dbl> <chr>        <dbl> <dbl> <chr>  <lgl> <lgl>         <lgl> <lgl> <lgl>  
#> 1    121 F1               1     6 Analy… NA    NA            NA    NA    NA
```

**replacevalue**: lets you replace a specific value in a dataframe with
a user defined value

``` r
layout
#> # A tibble: 384 × 10
#>    WellId WellAddress Column   Row Drug  R2ID  Concentration Cells Type  Control
#>     <dbl> <chr>        <dbl> <dbl> <chr> <lgl> <lgl>         <lgl> <lgl> <lgl>  
#>  1      1 A1               1     1 Anal… NA    NA            NA    NA    NA     
#>  2     25 B1               1     2 Anal… NA    NA            NA    NA    NA     
#>  3     49 C1               1     3 Anal… NA    NA            NA    NA    NA     
#>  4     73 D1               1     4 Anal… NA    NA            NA    NA    NA     
#>  5     97 E1               1     5 Anal… NA    NA            NA    NA    NA     
#>  6    121 F1               1     6 Anal… NA    NA            NA    NA    NA     
#>  7    145 G1               1     7 Anal… NA    NA            NA    NA    NA     
#>  8    169 H1               1     8 Anal… NA    NA            NA    NA    NA     
#>  9    193 I1               1     9 Anal… NA    NA            NA    NA    NA     
#> 10    217 J1               1    10 Anal… NA    NA            NA    NA    NA     
#> # … with 374 more rows
replacevalue(layout, 'Drug', "Analyfyn", "test")
#> # A tibble: 384 × 10
#>    WellId WellAddress Column   Row Drug  R2ID  Concentration Cells Type  Control
#>     <dbl> <chr>        <dbl> <dbl> <chr> <lgl> <lgl>         <lgl> <lgl> <lgl>  
#>  1      1 A1               1     1 test  NA    NA            NA    NA    NA     
#>  2     25 B1               1     2 test  NA    NA            NA    NA    NA     
#>  3     49 C1               1     3 test  NA    NA            NA    NA    NA     
#>  4     73 D1               1     4 test  NA    NA            NA    NA    NA     
#>  5     97 E1               1     5 test  NA    NA            NA    NA    NA     
#>  6    121 F1               1     6 test  NA    NA            NA    NA    NA     
#>  7    145 G1               1     7 test  NA    NA            NA    NA    NA     
#>  8    169 H1               1     8 test  NA    NA            NA    NA    NA     
#>  9    193 I1               1     9 test  NA    NA            NA    NA    NA     
#> 10    217 J1               1    10 test  NA    NA            NA    NA    NA     
#> # … with 374 more rows
```

## Credits

Functions were written by Timo Voskuilen
