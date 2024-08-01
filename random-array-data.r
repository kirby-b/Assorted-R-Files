# Generates a vector with 20 random numbers
numbers <- floor(runif(20, min=0, max=501))

# Generates an x and y for graphing later
x <- floor(runif(20, min=0, max=101))
y <- floor(runif(20, min=0, max=101))

# Displays the highest value
max(numbers)
# Displays the lowest value
min(numbers)
# Displays the average
mean(numbers)
# Displays the most middle value
median(sort(numbers))
# Displays the most common value(mode)
names(sort(-table(numbers)))[1]

# Displays Scatter Plot
plot(x, y)

#Displays Line Chart
plot(sort(x), sort(y), type="l")
