# cs201_asn_1.R					
# Zaccery Tarver , s1338565	
# CS-201						
# Spring 2024

##1

c(5, "a" , 1 , "c")
#c(5, 2, "a", 1 , "c")
#Same thing happens even with more doubles than strings

#This outputs the contents of the vector by showing the
#numbers with double quotes surrounding them. 
#This happens because vectors are not supposed to 
#have multiple data types. The string data type has 
#priority over the type double, so it will "correct"
#the other data types if they do not match. 

#Here is with integers  and doubles instead instead
vector <- c(5L, 3.0 , 1L , 9.0)
typeof(vector[1])
#But the same thing happens. The integer 5L becomes a double,
#Along with the other integers. 

##2
items <- c("spam" , "eggs" , "beans" , "bacon" , "sausage")

items[-3] 
#This statement above produces a vector of all the items
#in items except "beans", found at the third index

#Version of items without spam
nospam <- items[-3]
nospam

#Version of items with more spam
morespam <- c(items[1], items[2] , items[5] , items[1] , items[1])
morespam

#Now with lobster
items <- c(items, "lobster")
items

##3
#Using matrix function
tictac.toe <- matrix(c('X', 'O', 'X', 'O' , 'X' , 'O', 'X' , 'O' , 'X'), nrow = 3 , ncol = 3) 
tictac.toe

#Not using matrix function, using dimension function
vectac.toe <- c('X' , 'O' , 'X' , 'O' , 'X' , 'O' , 'X' , 'O' , 'X')
vectac.toe 

#Set dimensions to 3 x 3 from a length 9 vector.
dim(vectac.toe) <- c(3,3)
vectac.toe

##4
#?sample
#our sample function will generate 1000 results
#from a pool of six possible outcomes (1:6),
#With replacement since we are rolling a die
#All probability weights are equal so we can keep weighting at null
die1 <- sample(1:6 , 1000, replace = TRUE)
die2 <- sample(1:6 , 1000, replace = TRUE)

#Sum of generated numbers in both vectors
#?frequency
#Do not use frequency function, instead use table
#on our vector
dice_sums <- die1 + die2
dice_frequencies <- table(dice_sums)
myplot <- barplot(dice_frequencies, xlab = "dice sums" , ylab = "occurrences")



#?table
#?barplot
#?hist
#Understand the nuances between these functions

