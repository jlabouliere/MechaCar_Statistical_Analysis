#Deliverable 1
#load the deployer package
library(dplyr)
#import and read the csv file as a dataframe
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)
#perform linear regressionon all six variables
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD+mpg,data=MechaCar_mpg)
#determine the p-value and r-squared value
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD+mpg,data=MechaCar_mpg)) 

#Deliverable 2
# import and read the csv file as a table
Suspension_Coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)
head(Suspension_Coil)
#create a total_summary dataframe w/summarize()
total_summary <- Suspension_Coil %>% summarize(MeanPSI=mean(PSI), MedianPSI=median(PSI), VarPSI=var(PSI), SDPSI=sd(PSI))
head(total_summary)
#create a lot_summary datafrome w/group_by and summarize()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(MeanPSI=mean(PSI), MedianPSI=median(PSI), VarPSI=var(PSI), SDPSI=sd(PSI),.groups = 'keep')
head(lot_summary)
