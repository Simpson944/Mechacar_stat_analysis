library(dplyr)
mpg_c <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_c)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_c))

coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- summary(coil_data=mean$PSI, median_PSI=median$PSI, .groups = "keep") 
#create summary table with multiple columns

total_summary <- coil_data %>% summarize(Mean_psi=mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')

LOT_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_psi=mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep') #create summary table

  head(LOT_summary)


  
  t.test(coil_data$PSI)
  
lot1 <- coil_data %>% filter(Manufacturing_Lot=='Lot1')
lot2 <- coil_data %>% filter(Manufacturing_Lot=='Lot2')
lot3 <- coil_data %>% filter(Manufacturing_Lot=='Lot3')

t.test(lot1$PSI,mu=mean(coil_data$PSI))

t.test(lot2$PSI,mu=mean(coil_data$PSI))

t.test(lot3$PSI,mu=mean(coil_data$PSI))

t.test(formula = PSI ~ Manufacturing_Lot, data = coil_data, mu=mean(coil_data$PSI), subset = Manufacturing_Lot=='Lot2')


?t.test()

