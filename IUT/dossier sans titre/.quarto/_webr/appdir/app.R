library(shiny)

ui <- fluidPage(
titlePanel("Hello Shiny!"),
sliderInput("n", "N", 1, 100, 50),
verbatimTextOutput("result")
)

server <- function(input, output, session) {
output$result <- renderText({
paste("La valeur de n * 2 est :", input$n * 2)
})
}

shinyApp(ui, server)
