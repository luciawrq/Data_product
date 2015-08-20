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
    tabsetPanel(
      tabPanel("Predict",  
               h4('You entered'),
               textOutput('value'),
               h4('The predicted species is'),
               textOutput('Sp')), 
      tabPanel("Documentation", 
              h4("How to use the App"),
              p("The App is used to predict one out of three species of iris, it takes four variables:
                sepal length and width, petal length and width. You can put in the values
                on the side bar panel and view results on the main panel"))
     
    )
   
  )
))