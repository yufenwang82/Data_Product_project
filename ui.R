library(shiny)
library(datasets)
data("EuStockMarkets")

# Define UI for application that draws a histogram
shinyUI<-fluidPage(
  
  # Application title
  titlePanel("Closing Prices of Major European Stock from 1991 to 1998"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       ## select index type
        radioButtons("index", "Please Select Index:",
                     c("DAX" = "DAX",
                       "SMI" = "SMI",
                       "CAC" = "CAC",
                       "FTSE" = "FTSE"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("Plot")
    )
  )
)
