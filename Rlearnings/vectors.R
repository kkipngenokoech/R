#ATOMIC VECTORS - only contains elements of the same type
#you use the c()-combine function, to combine multiple values in a vector
numeric_vector <- c(1L,2L,3L,4L,5L,6L)
numeric_vector
#every vector you create has two key properties; type and length
typeof(numeric_vector)
length(numeric_vector)
#you can also check if the vector is of specific type using the is function
is.integer(numeric_vector)
logical_vector <- c(1.9,2.8,3.7,4.5)
names(logical_vector) <- c(TRUE,TRUE,FALSE)
logical_vector

#lists - contains elements of the diffrent type but same data structures
#you use the list function
list_vector <- list(TRUE,5L,2.34,"hello")
#list_vector
#to know the data structs of its element you : str(name of the list)

library(tidyverse)
library(lubridate)
#working with dates ad times
today()#ges the date of today
now()#gets the time of today
#when working with R there are three ways you can create a date-time format
#1.from a string- firat idetify the order in which the y,m,d are laid then  rearrange them correctly
ymd("2022-08-08")
typeof(ymd("2022-08-08"))
#2.from an existing date/time object
#3.from an individual date