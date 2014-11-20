library(shiny)
library(scales)
library(ggplot2)

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    data <- read.table(header=TRUE, "http://student.agh.edu.pl/~andudek/Calosc.txt")
    wsie <- read.table(header=TRUE, "http://student.agh.edu.pl/~andudek/wies.txt")
    miasta <- read.table(header=TRUE, "http://student.agh.edu.pl/~andudek/Miasto.txt")
    if(input$typ == "calosc"){
      ggplot(data, aes(Wojewodztwo, 
                     Mieszkancy, fill=Miejsce)) + geom_bar(stat="identity", 
                                                      position = "dodge") + scale_fill_brewer(palette = "Set1")  + scale_y_continuous(breaks=seq(0,5500000,500000)) + theme(axis.text.x = element_text(angle=90, size=14))
    } else if(input$typ == "wsie"){
              ggplot(wsie, aes(Wojewodztwo, 
                       Mieszkancy, fill=Miejsce)) + geom_bar(stat="identity", 
                                                             position = "dodge") + scale_fill_brewer(palette = "Set1")  + scale_y_continuous(breaks=seq(0,5500000,500000)) + theme(axis.text.x = element_text(angle=90, size=14))
    } else if(input$typ == "miasta"){
              ggplot(miasta, aes(Wojewodztwo, 
                       Mieszkancy, fill=Miejsce)) + geom_bar(stat="identity", 
                                                             position = "dodge") + scale_fill_brewer(palette = "Set1")  + scale_y_continuous(breaks=seq(0,5500000,500000)) + theme(axis.text.x = element_text(angle=90, size=14))
      
    }
    
  })
})
