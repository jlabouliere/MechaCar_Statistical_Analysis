# MechaCar_Statistical_Analysis
AutosRUs' MechaCar prototype is experiencing production issues that managment feels can somehow be solved by linear regression models unrelated to the manufacturing process.  An analysis of MPG and PSI of suspension coils from manufacturing lots is requested to determine predictive variables for MPG and produce summary stats of suspension coil PSI.  T-tests will be run to determine statistical variance of manufacturing lots from the mean population.  Subsequently, a statistical study is requested to compare vehicle performance of the MechaCar against vehicles of other manufacturers.
## Linear Regression to Predict MGP
### Deliverable 1 

![MPG Regression](https://user-images.githubusercontent.com/98665941/179372197-24a2bbbc-3356-43ac-82d2-8496dc90f06f.png)

1. Variables providing non-random amount of variance to mpg values in the dataset:
  * Intercept (red highlight)
    * p-value 5.08e-8 
  * Vehicle Length (yellow highlight)
    * p-value 2.6e-12
  * Ground Clearance (green highlight)
    * p-value 5.21e-8

2. Is the slope of the linear model considered to be zero:
  * There are multiple dependent variables providing non-random variance
  * The p-value of the the linear regression analyis is 5.35e-11
    * The p-value is significantly less than the assumed siginificance level of .05%
    * The slope is not equal to zero
    * Reject the null hypothesis

3. Does the linear model predict mpg of MecaCar prototypes effectively:
  * The R-squared value is .7149 (blue highlight)
    * Indication is that there are additional unmeasured variables that could improve the model, but the model makes a reasonable prediction

## Summary Statistics on Suspension Coils
### Deliverable 2
Total Summary

![Total Summary](https://user-images.githubusercontent.com/98665941/179375939-5c789943-ff64-4294-9b0a-3e4f40ef00fe.png)

Lot Summary

![Lot Summary](https://user-images.githubusercontent.com/98665941/179379472-1ffbebed-b01f-4e47-a253-ecde5513c46b.png)

* Design specifications dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
 * Variance of the population is 62.29 and within the limits
 * Variance of Lots 1 and 2 are within the specification limits with PSI variances of 0.98 and 7.47, respectively
 * Lot 3 variance of 170.29 is outside of specifications

## T-Tests on Suspension Coils
### Deliverable 3

All Lots: p-value .06, mean 1498.78; not statistically different from population

![Screen Shot 2022-07-16 at 9 00 14 PM](https://user-images.githubusercontent.com/98665941/179380832-e4b76f2d-07db-4348-b85f-71b561d7d5af.png)

Lot1: p-value 1.0 mean 1500.00; not statistically different from population mean

![Screen Shot 2022-07-16 at 8 54 21 PM](https://user-images.githubusercontent.com/98665941/179380711-cabe0d9f-eed2-46a6-a6dc-b599b3cad3b4.png)

Lot 2: p-value .61, mean 1500.20; not statistically different from population mean 

![Screen Shot 2022-07-16 at 9 01 23 PM](https://user-images.githubusercontent.com/98665941/179380851-0090cbcf-1f3a-42f0-b9a1-b4d2298adea0.png)

Lot 3: p-value .04, mean 1496.4; statistically different from population mean

![Screen Shot 2022-07-16 at 9 03 46 PM](https://user-images.githubusercontent.com/98665941/179380898-5bc44a0a-c45c-498b-828e-35eaf9d7718c.png)

## Study Design: MechCar vs Competition
### Deliverable 4

A truly quantifiable field that profoundly affects consumer behavior is the safety rating from Insurance Institute for Highway Safety (IIHS).  The agency performs rigorous testing of vehicles in various collision scenarios, effectiveness of onboard safety systems and stability control.  The top rating from the agency is the "IIHS Top Safety Pick +" rating that indicates a vehicle performs above standard in crashworthiness and crash mitigation.  Testing against top competitors in the same vehicle class could prove valuable to MechaCar in differentiating their product.

#### Metrics to test: 
1. Overall Rating~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD
2. Small Overlap - Front (Subset: Driver Side, Passenger Side)~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD
3. Front Crash Prevention - Vehicle to Vehicle~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD

#### Null and Alternate Hypotheses
H0: MechaCar's safety ratings are not statistically affected by the variables
Ha: MechaCar's safety ratings are influenced by the variables

#### Statistical Tests and Reasoning
Multiple Linear regression would be ideal as it uses more than two variables to assess the typical vehicle measures and features that can influence performance in safety testing that would, in turn, provide a target feature/measure to improve.

#### Data Needed for Testing
* IIHS Safety ratings for vehicles in the same class as the MechaCar Prototype
* IIHS Safety ratings for the MechaCar Prototype
* Vehicle Length, Weight, Spoiler Angle, Ground Clearance and AWD optionality for vehicles in the same class as the MechaCar Prototype
* Vehicle Length, Weight, Spoiler Angle, Ground Clearance and AWD optionality for the MechaCar Prototype

