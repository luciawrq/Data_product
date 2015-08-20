library(caret)
require(maps)
require(e1071)
data(iris)
modlda=train(Species ~., data=iris, method="lda")
x <- data.frame(Sepal.Length=NA, Sepal.Width=NA, Petal.Length=NA, Petal.Width=NA)

shinyServer(
  function(input, output) {
    output$value <- renderText({c(input$SL, input$SW, input$PL, input$PW)})
    output$Sp <- renderPrint({
      x <- rbind(x, c(input$SL, input$SW, input$PL, input$PW))
      predict(modlda, newdata = x)
      
        })
    
    } )
