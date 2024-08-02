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

# Holds the weight averages for the three groups
weightavg <- c(0,0,0)
# Holds the three group names
group <-c("Ctrl", "Trt1", "Trt2")

# Holds values for iteration, counts of how many entries, and total weight
i <- 1
con <- concount <- 0
t1 <- t1count <- 0
t2 <- t2count <- 0
# Loops through the plants table and calculate averages
for (x in plants$weight){
  # Checks the group each value belongs to and adds it to that groups total
  if (plants$group[i] == "ctrl"){
    con <- con + 10
    concount <- concount + 1
  }
  else if (plants$group[i] == "trt1"){
    t1 <- t1 + x
    t1count <- t1count + 1
  }
  else if (plants$group[i] == "trt2"){
    t2 <- t2 + x
    t2count <- t2count + 1
  }
  i <- i + 1
}
# Calculates the averages and adds them to the weight average vector
weightavg[1] <- (con/concount)
weightavg[2] <- (t1/t1count)
weightavg[3] <- (t2/t2count)

# Makes a bar chart for the average plant weight in the three groups
barplot(weightavg, names.arg = group, main="Average Plant Weight by Group")
