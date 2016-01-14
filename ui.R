library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =   c(vec_aux1[(3:30)],vec_aux1[(32:41)])), tableOutput("Septiembre")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices = c(vec_aux1[(3:30)],vec_aux1[(32:41)])), tableOutput("Septiembre2"))
    
  
      ),
  
  titlePanel("Septiembre"),
  sidebarLayout(
    sidebarPanel( "Resumen Septiembre",
                  style = "color:#2183dd;",
                  tableOutput("confidenceSeptiembre"),
                  tableOutput("liftSeptiembre")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1Septiembre"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1Septiembre"),
                  textOutput("tablanamecat2Septiembre"),
                  textOutput("tablaprobcat2Septiembre"),
                  textOutput("tablanamecat3Septiembre"),
                  textOutput("tablaprobcat3Septiembre"),
                  textOutput("tablanamecat4Septiembre"),
                  textOutput("tablaprobcat4Septiembre"),
                  textOutput("tablanamecat5Septiembre"),
                  textOutput("tablaprobcat5Septiembre")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1Septiembre"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1Septiembre"),
                  textOutput("tabla1namecat2Septiembre"),
                  textOutput("tabla1probcat2Septiembre"),
                  textOutput("tabla1namecat3Septiembre"),
                  textOutput("tabla1probcat3Septiembre"),
                  textOutput("tabla1namecat4Septiembre"),
                  textOutput("tabla1probcat4Septiembre"),
                  textOutput("tabla1namecat5Septiembre"),
                  textOutput("tabla1probcat5Septiembre"))
  ) 
  
  
))
