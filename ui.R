library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Analysis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select a stock to examine. 
        Information will be collected from yahoo finance."),
      textInput("symb", "Symbol", "SPY"),
      helpText("To get better analysis results,
        please select a longer time period, for example, more than two years."),
      dateRangeInput("dates", 
        "Time period",
        start = "2010-01-01", 
        end = as.character(Sys.Date())),
      br(),
      radioButtons("rb", "Choose action",
                 list("None"=0, "Decompose"=1, "Forecast"=2)),
      helpText("Note: Decompose will decompose a time series into seasonal,
        trend and irregular components using moving averages. 
        Forecast will provide two years forecast and the 80% and 95%
        prediction intervals on the stock price, using
        the exponential smoothing state space model"),
      br(),
      helpText("Click on the GO button to perform an action!"),
      actionButton('go', 'GO!'),
      br(),
      br(),
      br(),
      br(),
      helpText("CAUTION! Sometimes yahoo finance may stop responding
        when the queries are too frequent from a source. If you don't
        see stock price plot after page reload or a change of time period
        selection, please wait a moment and try again, thanks.")
    ),
    
    mainPanel(
      h4("Stock Price"),
      plotOutput("plot"),
      br(),
      h4("Analysis Output"),
      plotOutput("result"),
      br(),
      textOutput("currentTime"),
      tags$head(tags$style(type="text/css", ".container-fluid {  max-width: 1200px; }"))
    )
  )
))
