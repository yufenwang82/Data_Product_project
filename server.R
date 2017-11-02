library(shiny)
library(datasets)
data("EuStockMarkets")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$Plot <- renderPlot({
     # generate dataset from input
    if (input$index=="DAX"){
        plot(EuStockMarkets[,1],ylab="DAX closing price",xlab="Year")
    } else if (input$index=="SMI"){
        plot(EuStockMarkets[,2],ylab="SMI closing price",xlab="Year")
    }else if (input$index=="CAC"){
        plot(EuStockMarkets[,3],ylab="CAC closing price",xlab="Year")
    }else{
        plot(EuStockMarkets[,4],ylab="FTSE closing price",xlab="Year")
    }

    
  })
  
})
