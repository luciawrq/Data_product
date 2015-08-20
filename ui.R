shinyUI(pageWithSidebar(
  headerPanel("Predicting Species"),
  sidebarPanel(
    numericInput(inputId="SL", label = "Sepal Length",0, min = 0, max = 10, step = 0.1),
    numericInput(inputId="SW", label = "Sepal Width",0, min = 0, max = 10, step = 0.1),
    numericInput(inputId="PL", label = "Petal Length",0, min = 0, max = 10, step = 0.1),
    numericInput(inputId="PW", label = "Petal Width",0, min = 0, max = 10, step = 0.1),
    actionButton("goButton", "Go!")
  ),
  mainPanel(
    
    h4('You entered'),
    textOutput('value'),
    h4('The predicted species is'),
    textOutput('Sp')
   
  
  )
))