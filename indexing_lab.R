#indexing_lab.R
#Zaccery Tarver, s1338565
#CS-201
#Spring 2024

#I also number each code segment for improved readability
#The number indicates run count


#"Positive" Indexing of Vectors
#1
set.seed(33) # For reproducibility
x.vec <- rnorm(6) # Generate a vector of 6 standard normal variates
x.vec

#2
x.vec[3] # Third element

#3
x.vec[c(3,4,5)] # Third through fifth elements

#4
x.vec[3:5] # Same, but written more succintly

#5
x.vec[c(3,5,4)] # Third, fifth, then fourth element

#Negative Indexing
#6
x.vec[-3]# All but third element

#7
x.vec[c(-3,-4,-5)] # All but third through fifth element

#8
x.vec[-c(3,4,5)] # Same

#9
x.vec[-(3:5)] # Same, but more succint (note the parentheses!)

#Matrices

#10
x.mat <- matrix(x.vec , 3, 2) # Fill a 3 x 2 matrix with
                              # the elements of x.vec,
                              # in column-major order
x.mat

#11
x.mat[2,2] # Element in 2nd row, 2nd column

#12
x.mat[5] # Same (note this is using column major order)

#More Matrix Indexing

#13
x.mat[2,] # Second row

#14
x.mat[1:2,] # First and second rows

#15
x.mat[,1] # First column

#16
x.mat[,-1] # All but first column

#Indexing Lists

#17
#What does the sample do here?
x.list <- list(x.vec, letters, sample(c(TRUE,FALSE), size=4, replace=TRUE))

x.list
#sample takes a sample of a vector given a specific sample size, and doing so with or without replacement
#in this case, sample is taking a sample of size 4 from the vector [True, False] with replacement
letters

#18
x.list[[3]] # Third element of list

#19
x.list[3] # Third element of list, kept as a list
#Lists have labels, but are still one-dimensional

#Everything is Exactly the Same As Vector Indexing
#20
x.list[1:2] # First and second elements of list (note the single brackets!)
#Use single brackets when using sequences/vectors as indices for a list

#21
x.list[-1] # All but first element of list
#Note the numbering difference with entry

#But be Careful!
#22
#This works.

x.list[[1]]

#23
#This probably doesn't do what you expect:

x.list[[1:2]]

#Indexing with Booleans
#24
x.vec[c(F,F,T,F,F,F)] # Third element

#25
x.vec[c(T,T,F,T,T,T)] # All but third element

#26
pos.vec <- x.vec > 0 # Boolean vector indicating whether each element is positive
pos.vec

#27
x.vec[pos.vec] # Pull out only positive elements

#28
x.vec[x.vec > 0] # Same, but more succint(this is done "on-the-fly")

#Indexing with Names
#29
names(x.list) <- c("normals", "letters", "bools")
x.list[["letters"]] # "letters" (third) element

#Isn't letters the second element in our list?

#30
x.list$letters # Same, just different notation

#31
x.list[c("normals", "bools")]





