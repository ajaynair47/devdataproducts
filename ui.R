shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Iris species prediction"),
                sidebarPanel(
                        numericInput('SepalLength', 'Sepal Length cm', 6, min = 4, max = 8, step = 0.1),
                        numericInput('SepalWidth', 'Sepal Width cm', 3, min = 2, max = 5, step = 0.1),
                        numericInput('PetalLength', 'Petal Length cm', 4, min = 1, max = 7, step = 0.1),
                        numericInput('PetalWidth', 'Petal Width cm', 1, min = 0.1, max = 3, step = 0.1),
                        submitButton('Submit')
                ),
                mainPanel(
                        p("Documentation:",a("Iris species prediction",href="HelpDoc.html")),
                        h3('Results of prediction'),
                        h4('You entered : '),
                        h5('Sepal Length'),
                        verbatimTextOutput("SepalLength"),
                        h5('Sepal Width'),
                        verbatimTextOutput("SepalWidth"),
                        h5('Petal Length'),
                        verbatimTextOutput("PetalLength"),
                        h5('Petal Width'),
                        verbatimTextOutput("PetalWidth"),
                        h4('Which resulted in a prediction of '),
                        verbatimTextOutput("prediction")
                )
        )
)