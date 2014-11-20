library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    mymat <- as.matrix(read.table("moja_app/ludnosc2.txt", sep="\t", header=TRUE))
    mymat2 <- as.matrix(read.table("moja_app/ludnosc.txt", sep="\t", header=TRUE))
    y <-read.table("moja_app/ludnosc.txt",
                   )
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out =  1)
    par(mar = c(5.1, 4.1, 4.1, 7.1), xpd=TRUE)
    # draw the histogram with the specified number of bins
    barplot(mymat, col=heat.colors(length(rownames(mymat))),width=2)
    
  })
})
