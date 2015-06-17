#### Server.R ########
library(shiny)
library(ggplot2)
library(googleVis)
library(datasets)
data("mpg")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$plotOne <- renderPlot({
    selectedData <- subset(mpg, mpg$year==input$yearInput)
    p <- ggplot(selectedData, aes(x=displ, y=hwy, colour=class))+
      geom_point(aes(size=cyl))+xlim(1,8)+ylim(0, 50)
    print(p)
  })
  
  
#  output$plotTwo <- renderPlot({
#    #selectedData2 <- subset(mpg, mpg$year==input$yearInput)
#    p <- ggplot(mpg, aes_string(x="year", y=input$var, colour=class))+
#      geom_point()
#    print(p)
#  })
  
})