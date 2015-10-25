#0)
featureD <- read.table("Data/features.txt")
activityLD<-read.table("Data/activity_labels.txt")
trainXD<-read.table("Data/train/X_train.txt")
trainYD<-read.table("Data/train/y_train.txt")
testXD<-read.table("Data/test/X_test.txt")
testYD<-read.table("Data/test/y_test.txt")

#1)Merges the training and the test sets to create one data set.
XD<-rbind(trainXD,testXD)
YD<-rbind(trainYD,testYD)


#2)Appropriately labels the data set with descriptive variable names. 
colnames(XD)<-featureD$V2

#3)Extracts only the measurements on the mean and standard deviation for each measurement
intCol<-c(grep("mean",featureD$V2,perl = TRUE,value = TRUE),grep("std",featureD$V2,perl = TRUE,value = TRUE))
XD<-XD[,intCol]

#4)Uses descriptive activity names to name the activities in the data set
YLD<-merge(YD,activityLD,all.x = FALSE, all.y = TRUE, sort = FALSE )
Act<-YLD$V2
SD<-cbind(Act,XD)


#5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
resD<-aggregate(.~Act, data = SD,FUN = mean)

prefixes <- unique(gsub(pattern = "^(\\w*)\\-.*",replacement = "\\1-",x = names(resD)))
library(plyr)
result<-llply(prefixes, .fun = function(x){y <- subset(resD, select = names(resD)[grep(names(resD),pattern = paste("^", x, sep = ""))])})


#6)result! :D
write.table(result,file="./result.txt",row.name=FALSE)
