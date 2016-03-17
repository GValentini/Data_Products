library(shiny)

eurdf <- readRDS("data/eurodata.rds")

shinyServer(function(input, output) {
  
  myData <- reactive({
    eurdf[, c(input$xvar,input$yvar)]
  })
    
  result <- reactive({
    ## apply the k-means method to find the k centers
    kmeans(myData(), centers = input$knum)
  })
  
  output$plot <- renderPlot({
    par(mar = c(4, 4, 1, 1))
    ## display the observations
    plot(myData(), col = result()$cluster, pch = 19, cex = 1.8)
    grid(lty = 1)
    text(myData(), labels = eurdf[,2], pos = 3,
         cex = 0.8, col = result()$cluster)
    ## display the centers
    points(result()$centers, col = 1:input$knum, pch = 3, 
           cex = 3, lwd = 3)
  })
  
  output$table <- renderTable({
    cbind(eurdf, Cluster = result()$cluster)
  })
  
})
