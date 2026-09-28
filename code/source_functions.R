# Functions to help analyze data

#All values for canopy cover were biased by exactly 5%. This function will correct this bias
correct_canopy <- function(x){
  x <- x-5
  return(x)
}

#Humidity was measured in %, we want this recorded in proportion
convert_humidity <- function(x){
  x <- x/100
  return(x)
}




