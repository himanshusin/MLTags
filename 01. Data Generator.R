#Fake Data Generator Module 


## sourcing libraries
library("reticulate")
library("tidyverse")

available_locales = list("ru_RU","hi_IN","EN")
generator_language_encoding = available_locales[[3]] 
faker <-import('faker')

faker_local <- faker$Faker(locale = generator_language_encoding)

list_of_fields<-list(faker_local$address(), faker_local$ascii_email())
list_of_fields<-list(faker_local$address())

for (i in 1:5) {
for ( items_no in 1:length(list_of_fields)) { 
  #a <- list[[items]]  
  data<- data.frame [class = as.character(list_of_fields[[1]]), value =paste(list_of_fields[[1]]) ]
  
  print (items_no)
  }
}


generate_data <- function (nrow , list_of_fields)
  
  
  for ( items in list_of_fields) {
     for ( i in 1: nrow ){
       myvec <- list ( class= unlist (items), )
       
       
     }
    
  }
  
  
  


