# cs201_asn_4.R
# Zaccery Tarver, s1338565
# CS-201
# Spring 2024

#1
state.pop <- read.csv("2020_2023_state_region_pop.csv")
str(state.pop)
attach(state.pop)



#2
pct.pop.change <- (POPESTIMATE2023 - POPESTIMATE2020)*100/POPESTIMATE2020

#3
state.pop$PCTPOPCHG <- pct.pop.change

#4
attach(state.pop) # add PCTPOPCHG as a variable in ide
# sort the vector to get largest to smallest
# check to see where indices match
# because of built-in vectorization causing unintentional recycling, a for-loop needs to be implemented
# NOT: NAME[PCTPOPCHG == sort(pct.pop.change, decreasing = TRUE)[1:5]]
state.pop[order(state.pop$PCTPOPCHG, decreasing=TRUE), c(2, 7)]

top5inc <- vector(mode = "numeric" , length = 5)
for(i in 1:5)
{
  top5inc[i] <- which(PCTPOPCHG == sort(PCTPOPCHG , decreasing = TRUE)[i])
}

cat("Top 5 State Population Increase" , "\n")
cat(paste(NAME[top5inc], "increased by: ", sort(PCTPOPCHG , decreasing = TRUE)[1:5], "%"), sep = "\n")


#5
top5dec <- vector(mode = "numeric" , length = 5)
for(i in 1:5)
{
  top5dec[i] <- which(PCTPOPCHG == sort(PCTPOPCHG , decreasing = FALSE)[i])
}

cat("Top 5 State Population Decrease" , "\n")
cat(paste(NAME[top5dec], "decreased by: ", sort(PCTPOPCHG , decreasing = FALSE)[1:5], "%"), sep = "\n")

#6
write.csv(state.pop , "pop_change_rev.csv" , row.names = FALSE)

#7
pop_dens_data <- matrix(data = NA , nrow = length(rownames(state.x77)) , ncol = 4)

colnames(pop_dens_data) <- c("Name" , "Popdens 1977" , "Popdens 2023" , "Change in Popdens")

#Column 1 - names
pop_dens_data[ ,1] <- rownames(state.x77)

#Column 2 - 77 density
pop_dens_data[ ,2] <- (state.x77[,1] *1000) / state.x77[,8]

#Column 3 - 23 density (using modern state.area for area)
pop_dens_data[ ,3] <- POPESTIMATE2023[NAME != "District of Columbia"] / state.area

#Column 4 - Change in Density (For Output)
pop_dens_data[ ,4] <- as.double(pop_dens_data[,3]) - as.double(pop_dens_data[,2])


pop_dens_data

