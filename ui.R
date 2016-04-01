library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("CRM Analytics Single Purchaser Dashboard"),
  sidebarPanel(
      sliderInput('mu', 'Guess at the mu',value = 70, min = 0, max = 500, step = 10,)  ), 
  mainPanel(    
      plotOutput('myHist')  
    )
  ))