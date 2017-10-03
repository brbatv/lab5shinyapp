library(shiny)


server<-function(input, output) {
  require(lab5ab)
  
  
  output$user_input<-renderUI({
    if(input$method=="Address"){
    return(textInput("address",label="Address"))}
    if(input$method=="Latitude/Longitude")
    {return(numericInput("latitude","Latitude",0))}
  })
  output$user_input2<-renderUI({
    if(input$method=="Address"){
      return()}
    if(input$method=="Latitude/Longitude")
    {return(numericInput("longitude","Longitude",0))}
  })
  
   a<-reactive({
   if(input$method=="Address"&&(length(address)==1))
   {return(address$new(input$address))}
   else if(input$method=="Latitude/Longitude"&&input$latitude!=0&&input$longitude!=0) #conditions used so the api request isn't done when empty default. Would like 
   {return(address$new(c(input$latitude,input$longitude) ))}
     return()
   })
   
   output$data_table<-renderTable(a()$Components)
   output$coordinates<-renderTable(a()$Coordinates)
   output$formatted<-renderText(a()$Formatted_Address)
  
}


# Define server logic required to plot various variables against mpg
#shinyServer(function(input, output) {
#  a<-input$address
#  location<-address$new()
  
#})