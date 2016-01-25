---
title       : Shiny App Pitch 
subtitle    : Stock Analysis
author      : wzhang
job         : 
framework   : shower        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]   # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Stock Analysis

1. A tiny Shiny app to allow you analyze stock data online!
2. Decompose to find trend!
3. Forecast!

--- .class #id 

## Stock price downloaded from reliable source


```r
library(quantmod)
```

```
## Loading required package: xts
```

```
## Loading required package: zoo
```

```
## 
## Attaching package: 'zoo'
```

```
## The following objects are masked from 'package:base':
## 
##     as.Date, as.Date.numeric
```

```
## Loading required package: TTR
```

```
## Version 0.4-0 included new data defaults. See ?getSymbols.
```

```r
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
chartSeries(dataInput, name = "SPY", theme = chartTheme("black"), type = "candlesticks")
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

---

## Decomposition

---


## Forcast!


---


## Check it out!

http://

