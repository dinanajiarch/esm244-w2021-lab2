# Attach packages

library(shiny)
library(tidyverse)
library(palmerpenguins)


# Create the user interface
ui <- fluidPage(
    titlePanel("I am adding a TITLE!"), 
    sidebarLayout(
        sidebarPanel("put my widgets here!",
                     radioButtons(inputId = "penguin_species",
                                  label = "Choose penguin species:",
                                  choice = c("Adelie", "Chinstrap", "Gentoo"))
                     ),
        mainPanel("Here's my graph!")
    )
    
)


# Create the server function
server <- function(input, output) {}


# Combine into an app
shinyApp(ui = ui, server = server)