require(rCharts)
require(shiny)
library(knitr)
opts_chunk$set(comment = NA, results = "asis", comment = NA, tidy = F)
output$nvd3plot <- renderChart({
  haireye = as.data.frame(HairEyeColor)
  n1 <- nPlot(Freq ~ Hair, group = 'Eye', type = input$type,
              data = subset(haireye, Sex == input$sex)
  )
  
  n1$set("nvd3plot",width=600)
  n1$show('inline',include_assets = TRUE,cdn=TRUE)
})