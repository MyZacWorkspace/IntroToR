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
  seq <- paste(seq, ' ', sep='')
}


##1c
x <- c(2, 5, 3, 9, 8, 11, 6)
div <- as.integer((min(x)+max(x))/2)
x <- x %% div + 1
print(x)

#For loop
x <- c(2, 5, 3, 9, 8, 11, 6)
div <- as.integer((min(x)+max(x))/2)

i <- 1
for(val in x)
{
  x[i] <- val %% div + 1
  i <- i + 1
}
print(x)

##Iteration with while (Ulam sequence)
n <- 3

ulam <- c(n)

while(n > 1) 
{
  if(n %% 2 == 0)
  {
    n <- n/2
    ulam <- c(ulam, n)
  }
  else
  {
    n <- n*3 + 1
    ulam <- c(ulam, n)
  }
}

cat(ulam, sep =" -> ")





