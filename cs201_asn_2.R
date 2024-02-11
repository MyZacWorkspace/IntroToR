#cs201_asn_2.R
#Zaccery Tarver, s1338565
#CS-201
#Spring 2024

## Problem 1 
nr <- nrow(PlantGrowth)
nr
nc <- ncol(PlantGrowth)
nc

class(nr)
typeof(nr)

class(nc)
typeof(nc)

class(PlantGrowth)
typeof(PlantGrowth)


#  There are 30 rows and 2 columns. The nrow(PlantGrowth)
#  and ncol(PlantGrowth) variables are of class integer 
#  and type integer. PlantGrowth is of class data.frame 
#  and type list.

ctrl <- which(PlantGrowth$group == "ctrl")
ctrl

trt1 <- which(PlantGrowth$group == "trt1")
trt1

trt2 <- which(PlantGrowth$group == "trt2")
trt2

median(PlantGrowth$weight[ctrl])
max(PlantGrowth$weight[ctrl])
min(PlantGrowth$weight[ctrl])

median(PlantGrowth$weight[trt1])
max(PlantGrowth$weight[trt1])
min(PlantGrowth$weight[trt1])

median(PlantGrowth$weight[trt2])
max(PlantGrowth$weight[trt2])
min(PlantGrowth$weight[trt2])

# The median, maximum, and minimum for each of the
# three groups are as follows:
#   ctrl
# median = 5.155
# maximum = 6.11
# minimum = 4.17
#   trt1
# median = 4.55
# maximum = 6.03
# minimum = 3.59
#   trt2
# median = 5.435
# maximum = 6.31
# minimum = 4.92

#?plot
groups <- c("ctrl", "trt1", "trt2")
num_weight_all <- c(length(PlantGrowth$weight[ctrl]), 
                           length(PlantGrowth$weight[trt1]), length(PlantGrowth$weight[trt2]))
#A barplot best represents the group
barplot(num_weight_all, xlab = "Group" , names.arg = groups,
     ylab = "Number of Weight Observations" , main = "Number of Weight Observations for ctrl, trt1, and trt2 Groups")


#The numbers on the x axis correspond with 
#crtl (1) , trt1 (2) , and trt2 (3) respectively


#BoxPlot
weight_all <- list(ctrl = PlantGrowth$weight[ctrl], trt1 = PlantGrowth$weight[trt1], 
                   trt2 = PlantGrowth$weight[trt2])
boxplot(weight_all, 
        main = "Plant Growth Data", xlab = "Group", ylab = "Dried weight of plants")

##Problem 2
st_area_region <- data.frame(state.abb, state.area, state.region)

st_sum_area <- sum(st_area_region$state.area)
#The sum of of the 50 state areas in square miles is 3618399 sq miles

#Use the which() function to obtain the index of the state with the largest area
#Then use that index to access the state name in state.abb
max_state <- st_area_region$state.abb[which(st_area_region$state.area == max(st_area_region$state.area))]
max_state
#AK, Arkansas has the largest area

#Use the which() function to obtain the index of the state with the smallest area
#Then use that index to access the state name in state.abb
min_state <- st_area_region$state.abb[which(st_area_region$state.area == min(st_area_region$state.area))]
min_state
#RI, Rhode Island has the smallest area

south_areas <- st_area_region$state.area[which(st_area_region$state.region == "South")]

north_e_areas <- st_area_region$state.area[which(st_area_region$state.region == "Northeast")]

west_areas <- st_area_region$state.area[which(st_area_region$state.region == "West")]

north_c_areas <- st_area_region$state.area[which(st_area_region$state.region == "North Central")]

region_types <- c("South", "Northeast", "West", "North Central")
region_counts <- c(length(south_areas), length(north_e_areas), length(west_areas), length(north_c_areas))

barplot(region_counts, names.arg = region_types,
        main = "Number of states per region" , xlab = "region" , ylab = "number of states")

#Regional area sums (sq miles)
sum(south_areas)
#South: 899556
sum(north_e_areas)
#Northeast: 169353
sum(west_areas)
#West: 1783960
sum(north_c_areas)
#North Central: 765530

###Functions

##Problem 3



