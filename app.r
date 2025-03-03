# app.R
library(shiny)
library(ComplexHeatmap)

# Define UI for the app
ui <- fluidPage(
  titlePanel("Complex Heatmap Example"),
  sidebarLayout(
    sidebarPanel(
      h3("Sample Heatmap")
    ),
    mainPanel(
      plotOutput("heatmap")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$heatmap <- renderPlot({
    # Sample data for heatmap
    data_matrix <- matrix(rnorm(100), nrow = 10)
    
    # Create the heatmap
    Heatmap(data_matrix, name = "Example Heatmap")
  })
}

# Run the app
shinyApp(ui = ui, server = server)
