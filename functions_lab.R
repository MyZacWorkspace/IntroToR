# functions_lab.R
# Zaccery Tarver, s1338565
# CS-201
# Spring 2024

##Problem 1

#My Implementation
rand_elem <- function(vec)
{
  stopifnot(length(vec) > 0)
  
  return (sample(vec, 1))
}

#Test Cases

rand_elem(1:6)			# return one random integer between 1 and 6
rand_elem(c('yes', 'no', 'maybe'))	# return "yes", "no" or "maybe"
rand_elem(v = c(2, 4, 6, 8, 10))		# return 2, 4, 6, 8 or 10
rand_elem(vec = c('A', 'J', 'Q', 'K'))	# return "A", "J", "Q" or "K"


# All of the above would be valid ways to call rand_elem().


##Problem 2

#My Implementation - Using Loop
even_odd_a <- function(vec)
{
  count_even <- 0
  count_odd <- 0
  
  for(element in vec)
  {
    if(element == 0)
    {
      
    }
    else if(element %% 2 == 0)
      count_even <- count_even + 1
    else
      count_odd <- count_odd + 1
  }
  
  return (c(count_even, count_odd))
}

#Test Cases
even_odd_a(9:1)						# returns 4 5	 (4 evens, 5 odds)
even_odd_a(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9))	# returns 4 5	 (4 evens, 5 odds)

#My Implementation - No loop
even_odd_b <- function(vec)
{
  zero_indices <- which(vec == 0)
  
  if(length(zero_indices) > 0)
  {
    #Set vec equal to all indices but zero indices of itself
    vec <- vec[-zero_indices]
    return (c(sum(vec %% 2 == 0), sum(vec %% 2 != 0)))
  }
  
  #When there are no zeros, a simple return will do
  return (c(sum(vec %% 2 == 0), sum(vec %% 2 != 0)))
}

#Test Cases
even_odd_b(9:1)						# returns 4 5	 (4 evens, 5 odds)
even_odd_b(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9))	# returns 4 5	 (4 evens, 5 odds)
