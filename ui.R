library(shiny)

shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(
      helpText(),
      selectInput('x', 'Build a regression model of mpg against:',
                  choices = names(mtcars)[-1]),
      
      radioButtons("plotType", "Plot type",
                   c("Scatter"="p", "Histogram Lines"="h"),inline = TRUE)
    ),
    mainPanel(
      plotOutput('regPlot')
    )
  )
))