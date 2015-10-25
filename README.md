# DataScience_GettingAndCleanningData

Operation
---------------

0) Reads all the necesary data sets

1) Merges the training and the test sets to create one data set, for both X and Y data sets. 

2) Appropriately labels the data set with descriptive variable names. Sets the column name of the variables data set to the list that contains the descriptive datasets

3) Extracts only the measurements on the mean and standard deviation for each measurement. Gets the interesting variable names by finding those names that contains either mean or std. Selects those columns

4) Uses descriptive activity names to name the activities in the data set. Makes a join of the values of the Y data sets (with the activity id of each observation) with the data set that contains de descriptive activity name for each id

5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Makes an agregation by activity name (with a "mean" as funtion to aggregate)
- splits the data frame in a list of data frames one for each subject (understanding subjet as the main component of the variable name (variable name: "maincomponent"-"anything")) and containing all the variables corresponding to that subject

6) Writes the result



Code Book (variables)
---------------

0)
featureD <- List of all features.
activityLD<-Links the class labels with their activity name.
trainXD<-Training set.
trainYD<-Training labels.
testXD<-Test set.
testYD<-Test labels.

1)Merges the training and the test sets to create one data set.
XD<- full data set
YD<- labels



2)
intCol<-column names that contains the measurements on the mean and standard deviation for each measurement
XD<-data set with the interesting  columns

4)
SD<-full data set with the interesting columns and descriptive activity labels


5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
resD<-data set with agregation by activity name (with a "mean" as funtion to aggregate)
prefixes <- list of prefixes identifying the subjects
result<-data set with the average of each variable for each activity and each subject

