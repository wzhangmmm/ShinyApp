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

- A tiny Shiny app to allow you analyze stock data online
- Decompose to find trend, and ...
- Forecast!

--- .class #id 

## Stock price downloaded from reliable source

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- .class #id

## Decompose into 3 components

1. Trend
2. Seasonal
3. Random 


```r
library(quantmod)
help(decompose)
```

--- .class #id


## Forcast 2 years prices with prediction intervals!


```r
library(forecast)
help(ets)
help(forecast)
```

--- .class #id

## Check it out!

http://

