#analysis of canopy data
#install.packages("ggplot2")
library(ggplot2)

source("code/source_functions.R")

# Canopy cover and soil humidity analysis ####
  #import data 
    canopy <- read.csv("data/canopy_humidity.csv")
    head(canopy)
    
  #convert units
    canopy$canopy_perc_fixed <- correct_canopy(canopy$canopy_perc)
    canopy$soil_hum_prop <- convert_humidity(canopy$soil_hum_perc)
  
    head(canopy)
  
  #visualize data
    by_forest <- ggplot(aes(x=soil_hum_prop, y=canopy_perc_fixed), data=canopy)+
      geom_point(aes(colour=as.factor(site_id)))+
      facet_wrap(~forest_type)
    by_forest
  
  #basic analysis
    lm_simple <- lm(canopy_perc_fixed~soil_hum_prop, data=canopy)
    lm_simple
    
    lm_hum_forest <- lm(canopy_perc_fixed~soil_hum_prop+forest_type, data=canopy)
    lm_hum_forest
    anova(lm_hum_forest)

# Ant species richness and soil humidity analysis ####
    ant_richness <- read.csv("data/ant_richness.csv")
    ant_richness$soil_hum_prop <- convert_humidity(ant_richness$soil_hum_perc)
    
  ## ADD YOUR ANALYSES HERE ####
