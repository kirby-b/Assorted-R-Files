# recycled <- read.csv("location/CountryRecycledMaterialsByPercent2005.csv")
# or you can do
# recycled <- read.csv(file.choose())

recycled

max(recycled$X..Paper)
max(recycled$X..Glass) 
min(recycled$X..Paper)
min(recycled$X..Glass) 
# Displays the average
mean(recycled$X..Paper)
mean(recycled$X..Glass)
# Displays the most middle value
median(sort(recycled$X..Paper))
median(sort(recycled$X..Glass))
# Displays the most common value(mode)
names(sort(-table(recycled$X..Paper)))[1]
names(sort(-table(recycled$X..Glass)))[1]
