#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$ToothGrowthplot <- renderPlot({
    
    # generate type of supplement plot based on input$supplement from ui.R
    x    <- ToothGrowth[ToothGrowth$supp == input$supp,] 
    
    
    # draw the boxplot with the specified number of bins
    boxplot(x$len ~ x$dose,col = c("#9B5DFF","#4396E8","#96FFBC"),xlab = "dose",ylab = "length")
    
  })
  
})
