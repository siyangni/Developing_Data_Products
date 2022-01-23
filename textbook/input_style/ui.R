#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#=
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(

    # Application title
    headerPanel("Illustrating markup"),

    # Sidebar with a slider input for number of bins
        sidebarPanel(
            numericInput("id1", "Numeric inpyr, labeled id1", 0,
                         min =0, max =10, step=1),
            checkboxGroupInput("id2", 'Checkbox',
                               c("Value 1" = '1',
                                 "Value 2" = '2',
                                 "Value 3" = '3'
                                 )),
            dateInput("date", "Date:")),
        # Show a plot of the generated distribution
        mainPanel(
           h3("Illustrating Outputs"),
           h4("You entered"),
           verbatimTextOutput("oid1"),
           h4("You entered"),
           verbatimTextOutput("oid2"),
           h4("You entered"),
           verbatimTextOutput("odate")
        )
    ))

