getwd()
setwd("C:\Users\sasin\OneDrive\Desktop\IT24101396_Lab_06")

# Question 1
# Part 1: Distribution of X is Binomial(n=44, p=0.92)

# Part 2: P(X = 40)
dbinom(40, 44, 0.92)

# Part 3: P(X <= 35)
pbinom(35, 44, 0.92, lower.tail = TRUE)

# Part 4: P(X >= 38)
pbinom(37, 44, 0.92, lower.tail = FALSE)

# Part 5: P(40 <= X <= 42)
pbinom(42, 44, 0.92, lower.tail = TRUE) - pbinom(39, 44, 0.92, lower.tail = TRUE)

# Question 2
# Part 1: Random variable X = Number of babies born in a hospital on a given day

# Part 2: Distribution of X is Poisson(lambda=5)

# Part 3: P(X = 6)
dpois(6, 5)

# Part 4: P(X > 6)
ppois(6, 5, lower.tail = FALSE)

# Exercise 1
# Part 1: Distribution of X is Binomial(n=50, p=0.85)

# Part 2: P(X >= 47)
pbinom(46, 50, 0.85, lower.tail = FALSE)

# Exercise 2
# Part 1: Random variable X = Number of customer calls received in an hour

# Part 2: Distribution of X is Poisson(lambda=12)

# Part 3: P(X = 15)
dpois(15, 12)

