portoCalc <- function(choice1, choice2, choice3, choice4) {
round((data1[choice1, choice2]/50)*choice4 + (choice3*15), 2)
}

require(datasets)
data(eurodist)
data1 <- data.frame(as.matrix(eurodist))

shinyServer(
  function(input, output) {
    output$porto <- renderPrint({
      choice1 <- switch(input$from, 
                     "Athens"=1,
                     "Barcelona"=2,
                     "Brussels"=3,
                     "Calais"=4,
                     "Cherbourg"=5,
                     "Cologne"=6,
                     "Copenhagen"=7,
                     "Geneva"=8,
                     "Gibraltar"=9,
                     "Hamburg"=10, 
                     "Hook of Holland"=11,
                     "Lisbon"=12,
                     "Lyons"=13,
                     "Madrid"=14,
                     "Marseilles"=15,
                     "Milan"=16,
                     "Munich"=17,
                     "Paris"=18,
                     "Rome"=19, 
                     "Stockholm"=20,
                     "Vienna"=21)
      
      choice2 <- switch(input$to, 
                        "Athens"=1,
                        "Barcelona"=2,
                        "Brussels"=3,
                        "Calais"=4,
                        "Cherbourg"=5,
                        "Cologne"=6,
                        "Copenhagen"=7, 
                        "Geneva"=8,
                        "Gibraltar"=9,
                        "Hamburg"=10, 
                        "Hook of Holland"=11,
                        "Lisbon"=12,
                        "Lyons"=13,
                        "Madrid"=14,
                        "Marseilles"=15,
                        "Milan"=16,
                        "Munich"=17,
                        "Paris"=18,
                        "Rome"=19, 
                        "Stockholm"=20,
                        "Vienna"=21)
      
    
        
      choice4 <- switch(input$kilos,
                        ">1 kg"=1,
                        ">2 kg"=2,
                        ">5 kg"=3, 
                        ">10 kg"=4)
      
      portoCalc(choice1, choice2, input$way, choice4)
      
      })
    
    output$inputValue <- renderPrint({input$glucose})
    output$prediction <- renderPrint({diabetesRisk(input$glucose)})
    output$value1 <- renderPrint({ input$from })
    output$value2 <- renderPrint({ input$to })
  }
)
