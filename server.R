predictspecies <- function(model,SepalLength, SepalWidth, PetalLength, PetalWidth) 
        {
                predict(model,
                data.frame(
                        Sepal.Length = SepalLength,
                        Sepal.Width = SepalWidth,
                        Petal.Length = PetalLength,
                        Petal.Width =  PetalWidth)
                )
        }

shinyServer(
        function(input, output) {
                
                modFit <- reactive({ 
                          data(iris)
                          require(randomForest)
                          randomForest(x=iris[,1:4], y=iris$Species )
                        })
                
                output$SepalLength <- renderPrint({input$SepalLength})
                output$SepalWidth <- renderPrint({input$SepalWidth})
                output$PetalLength <- renderPrint({input$PetalLength})
                output$PetalWidth <- renderPrint({input$PetalWidth})
                output$prediction <- renderPrint({as.character(predictspecies(modFit(),
                                                                 input$SepalLength,
                                                                 input$SepalWidth,
                                                                 input$PetalLength,
                                                                 input$PetalWidth))})
        }
)