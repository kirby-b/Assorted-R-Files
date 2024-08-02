# Im not fully sure what I am doing but this sounded interesting

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD A DATASET ################################################

plants <- PlantGrowth

# Maximum and Minimum values(Highest and Lowest)
max(plants$weight)
min(plants$weight)

# Mean, Median, and Mode values(Average, Middle, and Most Common)
mean(plants$weight)
median(plants$weight)
names(sort(-table(plants$weight)))[1]

# Shows the maximum weight that 75 percent of plants are under
quantile(plants$weight, c(0.75))
# Shows the maximum weight that 50 percent of plants are under
quantile(plants$weight, c(0.50))
