# Applied Statistics 2014 conference workshop
library(shinythemes)
# define the user interface
shinyUI(fluidPage(theme=shinytheme("superhero"),
                  # define type of page layout
                  pageWithSidebar(
                    
                    # define content of page header ####
                    headerPanel("Poroke"),
                    
                    # define content of left side of the page ####
                    sidebarPanel(
                      selectInput(inputId = "meritev", 
                                  label = "Te zanima kako se sozi leta spreminja povprečna starost ali pa število sklenitev zakonskih zvez?",
                                  choices = c("Povprečna starost ženina",
                                              "Povprečna starost neveste", 
                                              "Število sklenitev zakonskih zvez", 
                                              "Sklenitev zakonskih zvez na 1000 prebivalcev"),
                                  selected = "Povprečna starost neveste")
                                 
                    ),
                    
                    # define content of the main part of the page ####   
                    mainPanel(
                      tabsetPanel(
                        tabPanel(title="Statistika porok skozi leta",      
                                 plotOutput("plotPorokePoLetih")
                        )
                      )
                    )
                  )
) )