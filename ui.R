library(shiny)


shinyUI(pageWithSidebar(
  
  headerPanel(""),
  
  sidebarPanel(
    radioButtons("method", "Search Method", choices=list("Address","Latitude/Longitude")),
    uiOutput("user_input"),
    uiOutput("user_input2")),
  
  mainPanel(
    tableOutput("data_table"),
    tableOutput("coordinates"),
    textOutput("formatted")
  
  )
))
# # Define UI for miles per gallon application
# #shinyUI(pageWithSidebar(
#   
#   # Application title
# #  headerPanel("Google Geocode"),
#   
# #  sidebarPanel(
#     textInput("address", "Address", value = "", width = NULL, placeholder = NULL)
# #  ),
#   
# #  mainPanel(
#     textOutput("table")
#     
#   )
# ))