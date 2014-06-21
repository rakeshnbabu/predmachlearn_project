# Exploratory analysis for Practical Machine Learning
#In this project, your goal will be to use data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. They were asked to perform barbell lifts correctly and incorrectly in 5 different ways. More information is available from the website here: http://groupware.les.inf.puc-rio.br/har (see the section on the Weight Lifting Exercise Dataset).

# Training data: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv

# Test data: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv




rawTrain <- read.csv("pml-training.csv")

dim(rawTrain)

names(rawTrain)

summary(rawTrain$user_name)

summary(rawTrain$new_window)

summary(rawTrain$classe)

library(caret)
