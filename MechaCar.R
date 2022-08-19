library(dplyr)

### Deliverable 1
# Import data from csv file
mecha_car_mpg <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression to predict the mpg of MechaCar prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))

## Results of linear regression
# p-value = 5.35e-11
# r-squared = 0.6825


### Deliverable 2
# Import data from coil csv file
coils <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create summary data frame
coils_summary <- coils %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create a summary data frame grouped by Manufacturing Lots
lots_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))