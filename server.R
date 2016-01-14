#Segundo Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
output$Septiembre<-renderPrint({
  y<-input$select
  paste(y,round(a_matrix_Septiembre[y,y], digits=4))
  
})

output$Septiembre2<-renderPrint({
  y<-input$select2
  paste(y, round(a_matrix_Septiembre[y,y], digits=4))
  
})

output$confidenceSeptiembre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Confidence",round(a_matrix_Septiembre[x,y]/a_matrix_Septiembre[x,x], digits=4))
})

output$liftSeptiembre<-renderPrint({
  x<-input$select
  y<-input$select2
  paste("Lift", round(round(a_matrix_Septiembre[x,y], digits=4)/(round(a_matrix_Septiembre[x,x], digits=4)*round(a_matrix_Septiembre[y,y], digits=4)), digits=4))
})

output$tablanamecat1Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tablaprobcat1Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[1], digits=4))
})

output$tablanamecat2Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tablaprobcat2Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[2],digits=4))
})

output$tablanamecat3Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tablaprobcat3Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste( round(t[3], digits=4))
})

output$tablanamecat4Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tablaprobcat4Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[4], digits=4))
})

output$tablanamecat5Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tablaprobcat5Septiembre<-renderText({
  x<-input$select
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[5], digits=4))
})


output$tabla1namecat1Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:3){
    nam[i]<-names(t[i])
  }
  paste( names(t[1]))
})

output$tabla1probcat1Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:3]/length(sub)
  paste(round(t[1], digits=4))
})

output$tabla1namecat2Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[2]))
})

output$tabla1probcat2Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  
  paste( round(t[2], digits=4))
})

output$tabla1namecat3Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[3]))
})

output$tabla1probcat3Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))
  
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[3], digits=4))
})

output$tabla1namecat4Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:4){
    nam[i]<-names(t[i])
  }
  paste( names(t[4]))
})

output$tabla1probcat4Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:4]/length(sub)
  paste( round(t[4], digits=4))
})

output$tabla1namecat5Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  nam<-vector(mode="character")
  for(i in 1:5){
    nam[i]<-names(t[i])
  }
  paste( names(t[5]))
})

output$tabla1probcat5Septiembre<-renderText({
  x<-input$select2
  Subconjuntos<-na.omit(subset(catg_sin_rep_Septiembre,
                               Septiembre.Categoriaf3==x,
                               select=c(Septiembre.CATEGORIA1)))    
  sub<-Subconjuntos[,1]; tab_sub<-table(sub);
  tab_sub_order<-sort(tab_sub, decreasing=T)
  t<-tab_sub_order[1:5]/length(sub)
  paste( round(t[5], digits=4))
})

})


#Septiembre
catg_Septiembre<-data.frame(Septiembre$CATEGORIA1, 
                            Septiembre$Categoriaf3,
                            Septiembre$SLSEQ, 
                            Septiembre$TICKET)

catg_sin_rep_Septiembre<-unique(catg_Septiembre)
