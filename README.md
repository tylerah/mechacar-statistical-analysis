# Statistical Analysis of MechaCar Data Using R
## Project Overview
The goal of this project was to analyze various metrics used to evaluate a new vehicle prototype proposed by MechaCar. Metrics included vehicle length, weight, spoiler angle, ground clearance, AWD capabiliteis, MPG, and PSI. Using the capabilities of the R programming language, a statistical analysis was performed and results were compared to similar products manufactured by MechaCar's competitors. 

## Linear Regression to Predict MPG
The following image displays the results of the linear progression used to predict MPG of the prototype:

![linear_regression_summary](https://user-images.githubusercontent.com/104606662/185524371-aa3198e2-88cb-4e49-899a-94fd3c4d5a2b.png)

From the output displayed above, the following conclusions can be made:
* Variance of a non-random variable is typically 0. Given this fact, the vehicle length and ground clearance appear to provide a non-random amount of variance to the MPG values. In short, both can be said to have an impact on the MechaCar's MPG. The other three variables (AWD, spoiler angle, and vehicle weight) appear to provide a random amount of variance. 
* Using the standard signifance level of 0.05, we are able to reject the null hypothesis (no difference) as the p-value is very small. By definition, this proves that the slope is not 0.
* The r-squared value can be used to determine if this model is an effective predictor of MPG. The adjusted r-squared value is 0.6825 which suggests that the model predicts the MPG of MechaCar prototypes relatively well (r-squared of 0 = variation not explained by model, r-squared of 1 = variation is fully explained by the model). An r-squared of 0.6825 suggests that it is not fully explained by teh model, but there is a decent amount of variance that can be attributed to it.

## Summary Statistics on Suspension Coils
The following image displays the overall summary statistics for the suspension coils:

![total_summary_df](https://user-images.githubusercontent.com/104606662/185527153-199d0a60-d5a2-4e06-8826-3916c8deb254.png)

The following image displays the summary statistics as categorized by manufacturing lots:

![lots_summary_df](https://user-images.githubusercontent.com/104606662/185527165-c31de66b-9f05-403c-9ddf-a5db04b0f87e.png)

When all of the data is analyzed together, the PSI variance is 62.3. This value is well within the requirement that the PSI variation not exceed 100 pounds per square inch. This suggests that the current manufacturing process meets the design specification. 

However, when the data is broken into manufacturing lots it is observed that each lot has vastly different variance. Lots 1 and 2 are quite low while Lot 3 is quite high. In fact, at a variance of 170.2 PSI Lot 3 does not meet the design specification. Lots 1 and 2 seemingly have very little variance (0.98 PSI and 7.5 PSI respectively). This data suggests that Lot 3 needs further evaluation to determine what is causing this variance while Lots 1 and 2 should be evaluated to determine what is reducing variance compared to Lot 3. 

## T-Tests on Suspension Coils

After performing a linear regression analysis and obtaining the summary statistics for the suspension coils, T-tests were performed on the data in order to determine if there is a true statistical difference between the mean of this dataest and the general population. The population mean was considered to be 1,500 for the purpose of this analysis. 

The following image displays the T-test performed on the combined suspension coils data:

![t-test](https://user-images.githubusercontent.com/104606662/185528634-36eeb4cf-29f7-4218-add5-263a57fe0493.png)

The following iamge displays the T-tests performed on the individual manufacturing lots:

![t-test_by_lot](https://user-images.githubusercontent.com/104606662/185528699-22b5ee4d-145d-4b92-8b3a-09bc26cfa42a.png)

The aggregate data produced a mean of 1498.8 and a p-value of 0.06028 which is greater than 0.05. Because of this, the null hypothesis is not rejected and the sample mean should not be considered statistically significant. 

When breaking down the data into manufacturing lots, the mean for Lot 1 was 1500 (p-value of 1.0), the mean for Lot 2 was 1500.2 (p-value of 0.6), and the mean for Lot 3 was 1496.1 (p-value of 0.04). Lots 1 and 2 have p-values that are greater than 0.05 suggesting that the data is not statistically significant (fail to reject null hypothesis). However, Lot 3 has a p-value lower than 0.05 which indicates that the null hypothesis should be rejected and that the data is statistically significant. A closer observation of the data also reveals that the confidence intervals for Lot 3 do not include the population mean further strengthening the conclusion that the data is statistically different from the general population.

## Study Design: MechaCar vs Competition

Currently, gas prices are a hot topic of conversation. As such, it's pertinent to gather more data on gas mileage in order to market the MechaCar to potential customers. In particular, breaking down the gas mileage by city and highway could provide meaningful data so that customers can evaluate the car based on their personal driving behaviors. 

In this case, we would test three pairs of hypothesis. 
* Null Hypothesis 1: there is no difference between the gas mileage while driving in the city between MechaCar and the general population 
* Alternative Hypothesis 1: MechaCar's gas mileage while driving in the city is different from the general population
* Null Hypothesis 2: there is no difference between the gas mileage while driving on the highway between MechaCar and the general population 
* Alternative Hypothesis 2: MechaCar's gas mileage while driving on the highway is different from the general population
* Null Hypothesis 3: there is no difference between the gas mileage while driving in both environments between MechaCar and the general population 
* Alternative Hypothesis 3: MechaCar's gas mileage while driving in both environments is different from the general population

In order to run this test, the following data would need to be collected:
* average gas mileage while driving on the highway (MechCar and various other cars produced by competitors)
* average gas mileage while driving in the city (MechaCar and various other cars produced by competitors)
* average gas mileage while driving in both environments

The best statistical test to evaluate this hypothesis would be the T-test. After gathering all of the data and comparing the averages/means to one another, a T-test would reveal whether or not any differences were statistically significant. 
