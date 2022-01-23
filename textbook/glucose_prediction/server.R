#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

diabetesRisk <- function(glucose) glucose / 200

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$InputValue <- renderPrint({input$glucose})
  output$prediction <- renderPrint({diabetesRisk(input$glucose)})
  
  
  
})
