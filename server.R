library(shiny)

# Define server logic required to plot various variables against mpg
shinyServer(
  function(input, output, session)
    {
  output$mySite <- renderUI( {
    url <- paste('\n', (gsub("([N ])", "", paste("https://gdc.xenahubs.net/download/TCGA-", input$variable,"/Xena_Matrices/TCGA-",input$variable,".",input$var,".tsv.gz"))))
    tags$a(href = url, url)
  
    })
  }
)

