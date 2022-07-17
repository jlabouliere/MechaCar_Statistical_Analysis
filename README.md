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






