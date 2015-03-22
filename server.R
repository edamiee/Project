palette(c("#6666FF", "#00FFCC", "#4DAF4A", "#00FFFF",
          "#FF7F00", "#000066", "#FFFF99", "#FF33CC", "#66FF33"))

shinyServer(function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    USArrests[, c(input$xcol, input$ycol)]
  })
  
  clusters <- reactive({
    kmeans(selectedData(), input$clusters)
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })
  
})