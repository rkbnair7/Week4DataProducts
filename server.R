library(shiny)
library(HistData)

library(dplyr)
library(ggplot2)
library("plotly")



library(shiny)

# Load Data

Hrs <- read.csv("./Hurricanes.csv")

# Define a server for the Shiny app 
function(input, output) { 
  
  #output$people<-reactive({           
  output$pText <- renderText({
    paste("Father's height is",
          strong(round(input$inFh, 1)),
          "cm, and mother's height is",
          strong(round(input$inMh, 1)),
          "cm, then:")
  })

  output$people <- renderPlot({ 
     

    plot(x=Hrs$Years,y=Hrs[,input$Region],
         main=input$Region,
         ylab="Number Hurricanes in Gulf of Mexico",
         xlab="Year")
    
    p<-ggplot(data=Hrs, aes(x=Hrs$Years, y=Hrs[,input$Region], group=1)) +
      geom_line()+
      geom_point()+
      labs(title="Hurricanes in GOM",x="Years", y = "Value")

    p<-p+ 
       geom_line(color="red")+
       geom_point()
    
    p
    

    
  })  
  
}