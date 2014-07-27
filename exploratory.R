# Exploratory analysis for Practical Machine Learning
#In this project, your goal will be to use data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. They were asked to perform barbell lifts correctly and incorrectly in 5 different ways. More information is available from the website here: http://groupware.les.inf.puc-rio.br/har (see the section on the Weight Lifting Exercise Dataset).

# Training data: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv

# Test data: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv

library(caret)


rawTrain <- read.csv("pml-training.csv")
rawTest <- read.csv("pml-testing.csv")

dim(rawTrain)
names(rawTrain)
summary(rawTrain)

summary(rawTrain$classe)


length(which(rowSums(is.na(rawTrain)) == 0))
length(which(rowSums(is.na(rawTrain)) > 0))
length(which(colSums(is.na(rawTrain)) == 0))
length(which(colSums(is.na(rawTrain)) > 0))

trainIndex <- createDataPartition(newTrain$classe, p=0.75, list=FALSE)

tTrain <- rawTrain[trainIndex,]
tTest <- rawTrain[-trainIndex,]

length(tTrain[,1])
length(tTest[,1])
length(rawTrain[,1])




rfMod <- train(classe ~ ., data = tTrain, method = "rf", prox=TRUE)

rfMod

head(tTest)

pred <- predict(rfMod, newdata=head(tTest))

pred

length(pred)

