# MechaCar_Statistical_Analysis
## Deliverable 1: Linear Regression to Predict MPG

(5 points) Here are the first 10 rows of the 50 rows of MechaCar_mpg.csv read into a dataframe:
![First 10 rows of CSV file](MechaCar_mpg_data_frame_first_10_rows.png)

(10 points) Linear regression on all six variables (five are independent and MPG is dependent):
> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table) #generate multiple linear regression model

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

Coefficients:
     
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD
      
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00         -3.411e+00

(10 points) Statistical summary with intended p-values:

![Summary_statistics](Summary_statistics.png)
### Linear Regression to Predict MPG
(5 points) Questions addressed in Deliverable 1 Requirements</p>
Which variables/coefficients provide a non-random amount of variance to the mpg values in the dataset?

As explained in the module and noting the output from the multiple linear regression above, each Pr(>|t|) value in the summary output represents the probability that each coefficient contributes a random amount of variance to the linear model. According to the results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on mpg. 

The slope is not considered to be zero, as the multiple R-squared value is 0.7149 while the p-value remains significant. However, since multiple linear regression models use multiple variables and dimensions, they are almost impossible to plot and visualize. It will generally outperform a simple linear regression.

This model does appear to predict mpg of MechaCar prototypes effectively. The R-squared value of 0.7149 is relatively high while the p-value remains significant.

## Deliverable 2: Create Visualizations for the Trip Analysis

(5 points) Here are the first 10 rows of the 50 rows of Suspension_Coil.csv read into a dataframe:

![First 10 rows of Suspension Coil CSV file](Suspension_Coil_df.png)

(10 points) Total summary dataframe for all manufacturing lots

![Total_Summary_Data_Table](TotalSummaryDataTable.png)

(10 points) Lot summary dataframe for each manufacturing lot

![Loy_Summary_Data_Table](LotSummaryDataTable.png)

### Summary Statistics on Suspension Coils

(5 points) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total. However, it does not meets this design specification for each lot individually. It fails to meet this specification for Lot 3.

## Deliverable 3: T-Tests on Suspension Coils

(5 points) One-sample T-test across all manufacturing lots, compared to population mean of 1,500 psi:
![One-sample-T-test](One-sample-T-test.png)

(10 points) T-tests for each manufacturing lot, compared to mean 1,500 psi:

![T-test-Lot1](T-test-Lot1.png)

![T-test-Lot2](T-test-Lot2.png)

![T-test-Lot3](T-test-Lot3.png)

### T-Tests on Suspension Coils

(5 points) For the T-Test across all manufacturing lots, the sample mean is 1498.78 and the 95% confidence interval is 1497.507 to 1500.053. Thus, the sample mean across all manufacturing lots is not statistically different from 1500, and we fail to reject the null hypothesis.

For the T-Tests across Lots 1 and 2, the sample means are 1500 and 1500.2, respectively. Both are within their respective 95% confidence intervals of 1499.719 to 1500.281 for Lot 1 and 1499.423 to 1500.977 for Lot 2. We fail to reject the null hypothesis.

For the T-Test across Lot 3, the sample mean is 1496.14 and the 95% confidence interval is 1492.431 to 1499.849. The presumed mean value of 1500 falls outside the range of this confidence interval. The statistical analysis for Lot 3 shows that its mean is statistically different than the presumed mean of 1500. We reject the null hypothesis and fail to reject the alternative hypothesis.

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition
(5 points) To test the MechaCar against its competition, we can test the fuel economy of the MechaCar against the fuel economy ratings of comparable vehicles by other manufacturers.

(5 points)

The null hyphothesis H0 is that there is no significant difference in fuel economy ratings of MechaCar models against fuel economy ratings of the other manufacturers' vehicles. Any such differences, if determined by statistical analysis, are not significant and can be explained by random chance.

The alternate hypothesis Ha is that there is a statistically significant difference in fuel economy ratings of MechaCar models against fuel economy ratings of the other manufacturers' comparable vehicles.

(5 points)

To gain a competitive advantage, we want to show that MechaCar models provide superior fuel economy ratings over comparable non-MechaCar vehicles. Thus, we can perform a one-tailed t-test with p-value, or probability value, equal to 0.95.

(5 points)

We will obtain fuel economy data for the competitors' comparable vehicles and run statistical tests against fuel economy data of MechaCar vehicles. If we calculate a p-value that is smaller than 0.95, we would state that there is sufficient statistical evidence that our null hypothesis is not true. Thus, we would use these findings to reject the null hypothesis and generate the conclusion that MechaCar models offer superior fuel economy over the vehicles of its competitors.
