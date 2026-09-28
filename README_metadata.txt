Metadata

Project description: Studying the effects of soil humidity on canopy cover and ant species richness in deciduous vs coniferous forests. Six sites were sampled, each with four replicate measures. 
-------------------------------------------------------------------------
Data
***THIS IS EXAMPLE DATA***

canopy_humidity.csv
sample_id: unique sample id for each measured location
site_id: id of the field site in which the point was measured
canopy_perc: percent canopy cover at the measured point
soil_hum_perc: soil humidity as percentage
forest_type: whether the site is a coniferous forest (C) or a deciduous forest (D)

canopy_humidity.csv
sample_id: unique sample id for each measured location
site_id: id of the field site in which the point was measured
ant_richness: number of unique ant species identified at each point
soil_hum_perc: soil humidity as percentage
forest_type: whether the site is a coniferous forest (C) or a deciduous forest (D)

-------------------------------------------------------------------------
Analysis

source_functions.R
Contains data correction and conversion functions to be applied to the data

analysis.R
Contains code to analyze the two datasets above