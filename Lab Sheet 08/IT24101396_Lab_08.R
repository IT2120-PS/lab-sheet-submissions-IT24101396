setwd("C:\\Users\\it24101396\\Desktop\\IT24101396_Lab_08")
## Importing the data set
data <- read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

## Question 01
popmn <- mean(Nicotine)
popvar <- var(Nicotine)

## Question 02
samples <- c()
n <- c()

for(i in 1:30){
  s <- sample(Nicotine, 5, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i, sep = ''))
}

colnames(samples) <- n

s_means <- apply(samples, 2, mean)
s_vars <- apply(samples, 2, var)

## Question 03
# Following commands will calculate mean and variance of sample means stored in "s_means" variable.
samplemean <- mean(s_means)
samplevars <- var(s_means)

## Question 04
popmn
samplemean

## Question 05
truevar=popvar/5
samplevars

data1 <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data1)
attach(data1)

##Exercise 01
# Calculate the population mean and population standard deviation
population_mean <- mean(Weight.kg.)
population_sd <- sd(Weight.kg.)

# Display results
cat("Population Mean:", population_mean, "\n")
cat("Population Standard Deviation:", population_sd, "\n")

##Exercise 02
# Set the sample size and number of samples
sample_size <- 6
num_samples <- 25

# List to store sample means and sample standard deviations
sample_means <- numeric(num_samples)
sample_sds <- numeric(num_samples)

# Loop to generate samples and calculate sample mean and standard deviation
for (i in 1:num_samples) {
  sample <- sample(Weight.kg., sample_size, replace = TRUE)
  sample_means[i] <- mean(sample)
  sample_sds[i] <- sd(sample)
}

# Display results
cat("Sample Means:", sample_means, "\n")
cat("Sample Standard Deviations:", sample_sds, "\n")

##Exercise 03
# Calculate the mean and standard deviation of the sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

# Display results and compare with population statistics
cat("Mean of Sample Means:", mean_of_sample_means, "\n")
cat("Standard Deviation of Sample Means:", sd_of_sample_means, "\n")

# Relationship between the sample mean and population statistics
cat("Population Mean:", population_mean, "\n")
cat("Standard Deviation of Sample Means should be close to Population SD / sqrt(sample_size):", population_sd / sqrt(sample_size), "\n")


