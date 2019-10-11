#Fake Data Generator Module 


## sourcing libraries
library("reticulate")
library("tidyverse")

available_locales = list("ru_RU","hi_IN","EN")
generator_language_encoding = available_locales[[3]] 
faker_global <-import('faker')

faker_local <- faker_global$Faker(locale = generator_language_encoding)


#faker_global$config$PROVIDERS
#faker_global$config$AVAILABLE_LOCALES

faker_local$address()


l1 = as.list ( 'a','b')
l2 = as.list ( 'c','d')

l3 <- as.data.frame(cbind (l1,l2))
l4 <- as.data.frame(rbind (l1,l2))



generate_data <- function (nrow) {
  
  lst <- list()  
  for (i in 1:nrow) {
    
    lst[[i]]   <- list (faker_local$name())
    data<- as.data.frame(lst)
    
        }
    return(lst)
  }
  
  
  
a<- generate_data(10)
a

b<- do.call(rbind,a)



