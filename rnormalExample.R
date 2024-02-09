# generates vector of 10,000 random numbers in a normal distribution with mean=500,
# standard deviation=100; store in vector called data;
# floor function takes each number from rnorm and removes the decimal point
data <- floor(rnorm(10000, 500, 100))


# the table function counts frequency of numbers in data; stores in integer table called occurrences; also see ?table
occurrences <- table(data)	


# generate bar plot from occurrences
barplot(occurrences)
