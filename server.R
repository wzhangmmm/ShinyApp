# server.R

library(quantmod)
library(forecast)
library(ggplot2)
library(gridExtra)


shinyServer(function(input, output, session) {
  
  dataInput <- reactive({
    to.monthly(getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE))
  })

  dcOutput <- reactive({
    tsInput <- ts(Ad(dataInput()), frequency=12)
    dc <- decompose(tsInput)
    return(dc)
  })

  fcOutput <- reactive({
    tsInput <- ts(Ad(dataInput()), frequency=12)
    fit <- ets(tsInput, model='MMM')
    fc <- forecast(fit)
    return(fc)
  })

  output$plot <- renderPlot({
    #chartSeries(dataInput(), name = paste(input$symb), theme = chartTheme("white"), type = "line")
    chartSeries(dataInput(), name = paste(input$symb), theme = chartTheme("black"), type = "candlesticks")
  })

  go <- eventReactive(input$go, {
    if(input$rb == 1) {
      dc <- dcOutput()
      df <- as.data.frame(cbind(dc$x, dc$trend, dc$seasonal, dc$random))
      df$date <- as.Date(time(Ad(dataInput())))
      names(df) <- c('Observed', 'Trend', 'Seasonal', 'Random', 'Date')
      th <- theme(axis.title.x=element_blank(), axis.title.y=element_blank(), plot.title = element_text(lineheight=.8, face="bold"))
      nod <- theme(axis.ticks.x=element_blank(), axis.text.x=element_blank())
      #p1<-ggplot(df, aes(x=Date, y=Observed)) + geom_line(color='green') + th
      p2<-ggplot(df, aes(x=Date, y=Trend)) + geom_line(color='red') + th + nod + ggtitle('Trend')
      p3<-ggplot(df, aes(x=Date, y=Seasonal)) + geom_line(color='brown') + th + nod + ggtitle('Seasonal')
      p4<-ggplot(df, aes(x=Date, y=Random)) + geom_line(color='blue') + th + ggtitle('Random')
      grid.arrange(p2, p3, p4, ncol = 1)
    }
    else if(input$rb == 2) {
      plot(fcOutput(), col='green', main='Forecast', labels=NULL)
    }

  })

  output$result <- renderPlot({
    go()
  })

  output$currentTime <- renderText({
    invalidateLater(1000, session)
    paste(Sys.time())
  })

})
