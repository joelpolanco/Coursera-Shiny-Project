

shinyServer(function(input,output){
  output$myHist <- renderPlot({      
    hist(df$Amount, xlab='Purchase Amount', col='lightblue',main='Histogram')      
    mu <- input$mu    
    lines(c(mu, mu), c(0, 200),col="red",lwd=5)      
    mse <- mean((df$Amount - mu)^2)      
    text(300, 1500, paste("mu = ", mu))      
    text(300, 1900, paste("MSE = ", round(mse, 2)))  
}) }
)