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


generate_data <- function (nrow) {
  
  lst <- list()  
  for (i in 1:nrow) {
    
    
    value <- faker_local$name()
    class <- 'faker$name'
    lst[[i]]   <- list (class, value )
    
   # data<- as.data.frame(lst)
    
        }
    return(lst)
  }
  
  
  
a<- generate_data(10)
a


a[[10]][[2]]

b<- do.call(rbind,a)



