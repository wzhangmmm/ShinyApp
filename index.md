---
title       : Shiny App Pitch 
subtitle    : Stock Analysis
author      : wzhang
job         : 
framework   : deckjs        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]   # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<style type="text/css">
body {background:grey transparent;
}
</style>

## Stock Analysis

A tiny Shiny app to allow you analyze stock data quickly and easily!

- View live stock data in candlesticks,
- Decompose time series to find trend and seasonal components,
- and ...
- Forecast!


--- .class #id 

## Tons of stock data from reliable sources


```
##     As of 0.4-0, 'getSymbols' uses env=parent.frame() and
##  auto.assign=TRUE by default.
## 
##  This  behavior  will be  phased out in 0.5-0  when the call  will
##  default to use auto.assign=FALSE. getOption("getSymbols.env") and 
##  getOptions("getSymbols.auto.assign") are now checked for alternate defaults
## 
##  This message is shown once per session and may be disabled by setting 
##  options("getSymbols.warning4.0"=FALSE). See ?getSymbols for more details.
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- .class #id

## Divide and conquer

Decompose into 3 components

1. Trend
2. Seasonal
3. Random 


```r
library(quantmod)
help(decompose)
```

--- .class #id


## Look into the future

- 24 months forecasting
- 80% and 95% predicton intervals


```r
library(forecast)
help(ets)
help(forecast)
```

--- .class #id

## Check it out now!

http://

