require(datasets)
data(eurodist)
data1 <- data.frame(as.matrix(eurodist))
liste <- (rownames(data))
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Developing Data Products Course Project"),
    
    sidebarPanel(
    
      
    selectInput("from", label = h3("From:"), 
                  choices = list("Athens", "Barcelona", "Brussels", "Calais", "Cherbourg",
                "Cologne", "Copenhagen", "Geneva", "Gibraltar", "Hamburg", "Hook of Holland",
                "Lisbon", "Lyons", "Madrid", "Marseilles", "Milan", "Munich", 
                "Paris", "Rome", "Stockholm", "Vienna"), 
                  selected = "Athens"),
    selectInput("to", label = h3("To:"), 
                choices = list("Athens", "Barcelona", "Brussels", "Calais", "Cherbourg",
                "Cologne", "Copenhagen", "Geneva", "Gibraltar", "Hamburg", "Hook of Holland",
                "Lisbon", "Lyons", "Madrid", "Marseilles", "Milan", "Munich", 
                "Paris", "Rome", "Stockholm", "Vienna"), 
                selected = "Rome"),
    

    
    checkboxInput("way", label = "Fast Shipping (+15 Euro)", value = 15.0),
    
    radioButtons("kilos", label= h3("Weight:"),
                choices = list(">1 kg", ">2 kg", ">5 kg", ">10 kg"),
                selected = ">1 kg")
    
    
    
    
    ),
    


    
    
    
    mainPanel(
      tabsetPanel(type="tabs",
                  tabPanel("Explanations", h3("Shipping Costs Calculator"),
                           p("This is a simple application to calculate the estimated shipping costs
                             of a package sent from one out of 21 european cities to another. 
                             The estimated price is based on the distance between these cities.
                             The distance is retrieved from the 'eurodist' package.
                             Based on your selections, the application calculates and 
                             outputs the estimated shipping price."),
                           h4("Usage"),
                           p("Choose a city from the dropdown menu to ship from and a city from the second
                             menu to ship to. You can select the weight of your package with the 
                             radio buttons.
                             There is the option of fast shipping for a fixed additional cost."),
                           p("Navigate to the 'Shipping Costs' tab to see the output of the application.")),
                  tabPanel("Shipping Costs",      h3('Results of prediction'),
                           h4('You selected the City of Origin as'),
                           verbatimTextOutput("value1"),
                           h4('And the City of Destination as'),
                           verbatimTextOutput("value2"),
                           h3('The shipping costs are (in Euro)'),
                           verbatimTextOutput("porto") )
                  )

    )
  )
)
