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

generate_data <- function (nrow, data_class, data_value) {
    
  lst <- list()  
  for (i in 1:nrow) {
    
    
    value <- faker_local$name()
    class <- 'faker$name'
    
    
    
    lst[[i]]   <- list (class, value )
    
        }
   return(lst)
  }
  
  
  
a<- generate_data(nrow=10, data_class=name , data_value=faker_local$name())
a



b<- do.call(rbind,a)
b



###------------------ Paramertized  encoding 


available_locales = list("ru_RU","hi_IN","EN")


faker_global <-import('faker')
#globalenv(faker_global)

generate_data <- function (encoding , nrow, data_class, data_value) {
faker_local <- faker_global$Faker(locale = encoding)
lst <- list()  

df <- data.frame(data_class=character(),
             data_value=character() 
                 ) 

for (i in 1:nrow) {
    
    
    value <- faker_local$name()
    class <- data_class
    lst[[i]]   <- list (class, value )
    
}
  df <- as.data.frame(do.call(rbind,lst))
  names(df)[1]<-'data_class'
  names(df)[2]<-'data_value'
  return(df)
}


hindi_address <- generate_data(encoding = 'hi_IN',nrow=10, data_class="name" , data_value=faker_local$name())
english_address <- generate_data(encoding = 'EN',nrow=10, data_class="age" , data_value=faker_local$address())
df <- rbind ( hindi_address, english_address)



