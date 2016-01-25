---
title       : Shiny App Pitch 
subtitle    : Stock Analysis
author      : wzhang
framework   : deckjs        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]   # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

# [Easy Online Stock Analysis and ... Forecast!]

---

## Step 1: Pick any stock

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- 

## Step 2: Divide and conquer

Decompose time series into

1. <h3>Trend</h3>
2. <h3>Seasonal</h3>
3. <h3>Residual</h3>


```r
library(quantmod)
help(decompose)
```

--- 


## Step 3: Look into the future

- <h3>24 months forecast</h3>
- <h3>Predicton intervals</h3>


```r
library(forecast)
help(ets)
help(forecast)
```

---

# Check it out now! [<h3>https://wzhang.shinyapps.io/shinyapp/</h3>](https://wzhang.shinyapps.io/shinyapp/)

