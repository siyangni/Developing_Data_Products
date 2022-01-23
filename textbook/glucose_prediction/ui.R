shinyUI(
  pageWithSidebar(
    headerPanel("Diabets Prediction"),
    sidebarPanel(
      numericInput('glucose', "Glucose, mg/dl", 90, min=50, max=200, step=5),
      submitButton('Submit')
    ),
    mainPanel(
      h3("Results of Prediction"),
      h4("You entered"),
      verbatimTextOutput('InputValue'),
      h4("Which result in a prediction of"),
      verbatimTextOutput('prediction')
    )
  )
)