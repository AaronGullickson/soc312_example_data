# Use this basic R script to test out code or answer assignment questions

#load ggplot
library(ggplot2)

# load a dataset
load("movies.RData")
load("earnings.RData")

# calculate a mean
mean(earnings$wages)

# calculate mean wages by gender
tapply(earnings$wages, earnings$gender, mean)

# make a model
model <- lm(wages~gender+age, data=earnings)
summary(model)
