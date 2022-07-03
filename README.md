# Mechacar_stat_analysis

## Linear Regression to Predict MPG
![Image alt text] (./MPG_Linear_model.jpg)

### The following variables provided a non-random amount of variance to the mpg values:
- Vehicle Length has a P.value of 2.60e-12, making it statistically significant 
- Ground Clearnace has a p.value of 5.21e-08, making it statistically significant
### Our linear model would not be a flat line (with a slope of 0) due to two factors:
- We have coefficients with statistical significance 
- Our R-Squared value is elvevated at .7 
### The linear model does predict a vehicles MPG, the r value being in the .7 range indicates around a 70% Correlation. 

----
## Summary statisctics on Suspension Coils 
### In total, the combined lots meet the maufactures requirements of no more than 100 psi in ariation (coming in at a variance of 62.3). On the individual level, lot 3 is the only lot out of tolerance; with a 'var' of 170 psi, and a standard diviation of 13. Their average and median PSI is within range, however further analysis is needed to evaluate potential outliers in the data (insert photo)

---
## T - Test's on Suspension Coils
### As shown in the following images, lot 1 and 2 show very low p value scores, indicating low variability. Lot 3's data indicates variability, with a P value of .16. Additionally, lot 3's mean value is the lowest at 1496 psi. 

---
## Future Statistical Analysis 
- What metric or metrics are you going to test?
    
    - What are the impacts of drivetrain (AWD, rwd, fwd) on miles per gallon

- What is the null hypothesis or alternative hypothesis?

    - H0 : There is no statistical difference between drivetrain and mpg performance 
- What statistical test would you use to test the hypothesis? And why?

    - i would run multiple Linear regression. The catagories would be the drive type, and in running this i would be able to evaluate the significance of each drive type on the measured MPG.  
- What data is needed to run the statistical test?

    - Rather than a "yes" or "no" in the current dataset, i would need a "Drivetrain" column with the 3 drivetypes listed in the response, with the accompanying MPG result

