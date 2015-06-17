### UI.R ###

library(shiny)
library(ggplot2)
library(googleVis)
library(datasets)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Car engines over the years"),
  
  p("This is a more complex layout realised with fluidrows instead of sidepanels"),
  br(),

  fluidRow(
    
    column(4,
           wellPanel(
              helpText("You can here select the Year to display
               in the scatter plot"),
              sliderInput("yearInput", "Year:", 
                          min = 1999, max = 2008, value = 2008))
           ),
    column(8,
           plotOutput("plotOne")
           )
    
  )#,
  
#  fluidRow(
    
#    column(4,
#           wellPanel(
#             helpText("Here you can select the variable to
#               display in the plot"),
#             selectInput("var",
#                         label = "Choose a variable to display",
#                         choices = list("Cty", "Hwy", "Displ"))
#           )
#    ),
#    column(8,
#           plotOutput("plotTwo")
#    )
#    
#  )

))