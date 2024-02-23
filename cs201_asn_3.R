# cs201_asn_3.R
# Zaccery Tarver, s1338565
# CS201
# Spring 2024

#Problem 1
pop_density <- function(abb)
{
  stopifnot(sum(state.abb == toupper(abb)) >0)
  
  #Correct populations, store in vector
  corrected_population <- state.x77[,1]*1000
  
  #population density is population divided by area
  density <- round(x = (corrected_population / state.x77[,8]), digits = 1)
  
  names(density) <- c("Population Density")
  
  pop_dens <- density[state.abb == toupper(abb)]
  
  
  #String to return
  string_1 <- paste(c(rownames(state.x77)[state.abb == toupper(abb)], ":"), sep = "", collapse = "")
  
  return (paste(c(string_1 , pop_dens , "people per square mile (1977)"), sep = "", collapse =" "))
}

pop_density('NJ')
# returns
#[1] "New Jersey: 975.0 people per square mile (1977)"


pop_density('wy')
# returns
#[1] "Wyoming: 3.9 people per square mile (1977)"


#Problem 2

#flips function implementation - Dr. Chung
flips <- function() 
{
  total_flips <- 0
  nheads <- 0
  
  # if nheads becomes 3, we got three 'heads' in a row
  while (nheads < 3) 
  {
    if (sample(c("T", "H"), 1) == "H") 
    {
      nheads <- nheads + 1
    } 
    else 
    {
      # didn't get heads; must reset to 0
      nheads <- 0
    }
    total_flips <- total_flips + 1
  } # end while
  
  
  return(total_flips)
} # end flips()

#Part a
flips_vec <- NULL
for(iteration in 1:1000)
{
  flips_vec <- c(flips_vec, flips())
}

flips_vec_freq <- table(flips_vec)

myplot <- barplot(flips_vec_freq, xlab = "Number of coin flips" , ylab = "Occurrences")

most_frequent_flip <- max(flips_vec_freq)
most_frequent_flip
#gets the most frequent number of flips, from the contingency table that is returned
as.integer(names(which(flips_vec_freq == most_frequent_flip))[1])

#ANSWER: Three coin flips is the most frequent number of coin flips required to get 3 heads in a row. 

#Part B 

#Now more concise with replicate function:
flips_vec <- replicate(1000 , flips())

flips_vec_freq <- table(flips_vec)

myplot <- barplot(flips_vec_freq, xlab = "Number of coin flips" , ylab = "Occurrences")

most_frequent_flip <- max(flips_vec_freq)
most_frequent_flip
as.integer(names(which(flips_vec_freq == most_frequent_flip))[1])

#Still, 3 coin flips is the most frequent number

#Part C

#Approximation formula of 3-flip probability:

prob_3_flips <-  flips_vec_freq[[which(rownames(flips_vec_freq) == "3")]] / sum(flips_vec_freq)

#The chances of getting 3 heads in a row in just 3 coin tosses is approximately 0.12