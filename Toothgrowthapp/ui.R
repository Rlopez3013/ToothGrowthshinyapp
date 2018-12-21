#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Toothgrowth shinny app"),
  
  # Sidebar with a select input for type of supplement 
  sidebarLayout(
    sidebarPanel(
      h4("Documentation"),
      p("This interactive tool is ploting tooth growth per dose of different supplements.the user can select supplement type."),
       selectInput("supp",
                   "type of supplements:",
                   c("orange juice"= "OJ","vitamin c" = "VC")
                   
                   
            )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("ToothGrowthplot")
    )
  )
))
