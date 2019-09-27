  library(shiny)
  ui <- fluidPage(
    actionButton("Metabolite Based","Metabolite Based"),
    actionButton("Sum","Sum"), 
    ("Untargeted Sistem Suitability"),
    sliderInput("num","Choose a number", min = 1, max = 100,value = 5),  
    plotOutput("hist"))
  
  server <- function(input,output){
    output$hist <- renderPlot({
      title <-"100 Random Normal Values"
      hist(rnorm(input$num),main = title)
    })}

  shinyApp(ui = ui, server = server)
