
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Colorblind-friendly Palettes from Washington State

<!-- badges: start -->
<!-- badges: end -->

![Mt. Rainier](cover.jpg)

The `wacolor` package contains 29 color palettes taken from the
landscapes and cities of Washington state. Each color was extracted from
a photograph, with minor alterations made to improve balance. The
palettes were evaluated by the color-blind author to ensure colors are
distinguishable, but some palettes risk more confusion than others.

## Installation

<!-- You can install the released version of wacolors from [CRAN](https://CRAN.R-project.org) with: -->

You can install `wacolors` from GitHub with:

``` r
devtools::install_github("CoryMcCartan/wacolors")
```

## Usage

``` r
library(wacolors)

# See all palettes
names(wacolors)
#>  [1] "rainier"         "rainier_meadow"  "larch"           "forest"         
#>  [5] "understory"      "seattle_night"   "seattle_fall"    "pike_place"     
#>  [9] "fort_worden"     "chambers_bay"    "stuart"          "sound_sunset"   
#> [13] "washington_pass" "winthrop"        "ross_lake"       "winter_mountain"
#> [17] "library"         "ferries"         "volcano"         "locks"          
#> [21] "deception_pass"  "scrubland"       "palouse"         "grand_coulee"   
#> [25] "chihuly"         "plane_view"      "UW"              "flag"           
#> [29] "tartan"

# See one palette
wacolors$rainier
#>    ground      lake      rock     trees     lodge fall_bush   glacier 
#> "#6D9537" "#364B6F" "#A1A2B7" "#2A4E45" "#7F4E28" "#E59A20" "#DEE5F0"
```

## The Palettes

### Continuous Palettes

![](man/figures/README-cont-palettes-1.png)<!-- -->![](man/figures/README-cont-palettes-2.png)<!-- -->![](man/figures/README-cont-palettes-3.png)<!-- -->![](man/figures/README-cont-palettes-4.png)<!-- -->![](man/figures/README-cont-palettes-5.png)<!-- -->![](man/figures/README-cont-palettes-6.png)<!-- -->![](man/figures/README-cont-palettes-7.png)<!-- -->

### All Palettes

![](man/figures/README-disc-palettes-1.png)<!-- -->![](man/figures/README-disc-palettes-2.png)<!-- -->![](man/figures/README-disc-palettes-3.png)<!-- -->![](man/figures/README-disc-palettes-4.png)<!-- -->![](man/figures/README-disc-palettes-5.png)<!-- -->![](man/figures/README-disc-palettes-6.png)<!-- -->![](man/figures/README-disc-palettes-7.png)<!-- -->![](man/figures/README-disc-palettes-8.png)<!-- -->![](man/figures/README-disc-palettes-9.png)<!-- -->![](man/figures/README-disc-palettes-10.png)<!-- -->![](man/figures/README-disc-palettes-11.png)<!-- -->![](man/figures/README-disc-palettes-12.png)<!-- -->![](man/figures/README-disc-palettes-13.png)<!-- -->![](man/figures/README-disc-palettes-14.png)<!-- -->![](man/figures/README-disc-palettes-15.png)<!-- -->![](man/figures/README-disc-palettes-16.png)<!-- -->![](man/figures/README-disc-palettes-17.png)<!-- -->![](man/figures/README-disc-palettes-18.png)<!-- -->![](man/figures/README-disc-palettes-19.png)<!-- -->![](man/figures/README-disc-palettes-20.png)<!-- -->![](man/figures/README-disc-palettes-21.png)<!-- -->![](man/figures/README-disc-palettes-22.png)<!-- -->![](man/figures/README-disc-palettes-23.png)<!-- -->![](man/figures/README-disc-palettes-24.png)<!-- -->![](man/figures/README-disc-palettes-25.png)<!-- -->![](man/figures/README-disc-palettes-26.png)<!-- -->![](man/figures/README-disc-palettes-27.png)<!-- -->![](man/figures/README-disc-palettes-28.png)<!-- -->![](man/figures/README-disc-palettes-29.png)<!-- -->
