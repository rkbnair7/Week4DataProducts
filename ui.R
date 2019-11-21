#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library("plotly")


# Load Data

Hrs <- read.csv("./Hurricanes.csv")


# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("Gulf of Mexico-Hurricanes"), 
  
  # Generate a row with a sidebar 
  sidebarLayout(       
    
    
                      # Define the sidebar with one input
                      sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="http://rpubs.com/joanperez/293126")),
                                   selectInput("Region", "Factors:",
                                               choices=colnames(Hrs)[-1]),
                                   hr(),
                                   helpText("Weather analysis"),

                                   # sliderInput(inputId = "inFh",
                                   #             label = "Father's height (cm):",
                                   #             value = 150,
                                   #             min = 150,
                                   #             max = 220,
                                   #             step = 1),                                   
                                   
                                   
                                                         ),


    
    # Create a spot for the barplot 
    mainPanel( 
      plotOutput("people")   
    ) 
    
  ) 
) 
