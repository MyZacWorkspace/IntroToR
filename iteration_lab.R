# iteration_lab.R
# Zaccery Tarver, s1338565
# CS-201							
# Spring 2024		

##1a
v <- vector(mode="numeric", length=10) # creates a 10-element vector of 0s

for(i in 1:10) 
{
  v[i] <- (i+2)^2 
}

print(v)

#While Loop Version
v <- vector(mode="numeric", length=10)

i <- 1
while(i < (length(v) + 1))
{
  v[i] <- (i+2)^2
  i <- i + 1
}

print(v)

##1b
i <- 0
seq <- ''
while(i < 50) 
{
  cat(seq, i %% 2, '\n', sep='')
  i <- i + 1
  seq <- paste(seq, ' ', sep='')
}

#For loop version
seq <- ''
for(i in 0:49)
{
  cat(seq, i %% 2, '\n', sep='')
  i <- i + 1
  seq <- paste(seq, ' ', sep='')
}


##1c




