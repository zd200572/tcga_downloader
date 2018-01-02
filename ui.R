library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("TCGA download url tool"),
  
  sidebarPanel(
    selectInput("variable", "Select One Caner:",
                list("LAML" = "LAML", 
                     "ACC" = "ACC", 
                     "number" = "1000")),
    
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
  mainPanel()
))