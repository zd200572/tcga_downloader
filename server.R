library(shiny)

# Define server logic required to plot various variables against mpg
shinyServer(
  function(input, output)
    {
  output$text1 <- renderText( 
    gsub("([N ])", "", paste("Download_url_is:\nhttps://gdc.xenahubs.net/download/TCGA-", input$variable,"/Xena_Matrices/TCGA-",input$variable,".",input$var,".tsv.gz")) ) 
  

  
  
}
)
