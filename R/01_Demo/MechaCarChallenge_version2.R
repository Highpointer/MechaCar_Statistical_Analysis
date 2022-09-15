library()
install.packages("dplyr", dependencies = TRUE)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',sep = ",", check.names=F,stringsAsFactors=F)
?lm
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)) #generate summary statistics
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- summarise(suspension_table, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #create summary table
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
t.test(suspension_table$PSI, mu=1500)
Lot1=subset(suspension_table, Manufacturing_Lot=="Lot1")
Lot2=subset(suspension_table, Manufacturing_Lot=="Lot2")
Lot3=subset(suspension_table, Manufacturing_Lot=="Lot3")
t.test(Lot1$PSI, mu=1500)
t.test(Lot1[['PSI']], mu=1500)
t.test(Lot2[['PSI']], mu=1500)
t.test(Lot3[['PSI']], mu=1500)