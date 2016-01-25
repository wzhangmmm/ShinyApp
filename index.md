---
title       : Shiny App Pitch 
subtitle    : Stock Analysis
author      : wzhang
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
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

- A tiny Shiny app to allow you analyze stock data online!
- Decompose to find trend!
- Forecast!

--- .class #id 

## Stock price downloaded from reliable source


```r
library(quantmod)
dataInput <- to.monthly(getSymbols("SPY", src = "yahoo",
      from = as.Date("01/01/10", format="%m/%d/%y"),
      to = as.Date("01/01/16", format="%m/%d/%y"),
      auto.assign = FALSE))
```

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

```r
chartSeries(dataInput, name = "SPY", theme = chartTheme("black"), type = "candlesticks", TA=NULL)
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- .class #id

## Decomposition


```r
library(quantmod)
help(decompose)
```

--- .class #id


## Forcast!


```r
library(forecast)
```

```
## Loading required package: timeDate
```

```
## This is forecast 6.2
```

```r
help(ets)
help(forecast)
```

--- .class #id

## Check it out!

http://

