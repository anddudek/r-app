library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mieszkańcy"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      radioButtons("typ", "Dane do wyswietlenia", c("Calosc"="calosc",                                                    
                                                    "Miasta"="miasta",
                                                    "Wsie" = "wsie"
                                                    ))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))