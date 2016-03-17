library(shiny)

shinyUI(fluidPage(
  titlePanel("K-Means Clustering Analysis Application"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("European Union Countries Clusters"),
      helpText("Execute a K-means clustering analysis of    
               the following economic indicators 
               from the 2014 Eurostat database:"),
      h6("GDP = Gross Domestic Product (Euro Per Capita)",
         style = "color:blue"),
      h6("GovDebt = Government Debt (Percentage of Gross Domestic Product)",
         style = "color:blue"),
      h6("UnempRate = Unemployment Rate", 
         style = "color:blue"),
      br(),
      
      selectInput("xvar", label = "X Axis Variable",
                  choices = c("GDP", "GovDebt", "UnempRate"), 
                  selected = "GDP"), 
      selectInput("yvar", label = "Y Axis Variable",
                  choices = c("GDP", "GovDebt", "UnempRate"), 
                  selected = "GovDebt"),
      sliderInput("knum", label = "Number of centers",
                  min = 1, max = 7, value = 4, step = 1)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("PLOT", plotOutput("plot")),
        tabPanel("TABLE", tableOutput("table"))
      )
    )
  ) 
))
