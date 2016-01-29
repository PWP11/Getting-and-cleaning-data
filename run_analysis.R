## Get and clean data course assignment

## Read in the test and training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")

## load lookup information
features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activity"))

##Merge test and training data
subject <- rbind(subject_train,subject_test)
Xdata <- rbind(X_train,X_test)
Ydata <- rbind(Y_train,Y_test)

##Label the subject
names(subject) <- c("subject")

##Label the activities in Ydata
library(plyr)
names(Ydata) <- c("activityId")
Ydata <- join(Ydata,activities, by = "activityId")

##Label the variables in Xdata
names(Xdata) <- features$featureLabel

##Extract only variables relating to Mean Value "mean()" and Standard deviation "std()"
##in Xdata and add subject and activity
keepmean <- grep("-mean\\(\\)",names(Xdata))
keepstd <- grep("-std\\(\\)",names(Xdata))
dataset <- cbind(subject,Ydata,Xdata[,keepmean],Xdata[,keepstd])
dataset <- dataset[,-2]

##Remove the "()" and the "-" from the variable names
names(dataset) <- sub("-mean\\(\\)","Mean",names(dataset))
names(dataset) <- sub("-std\\(\\)","Std",names(dataset))
names(dataset) <- sub("-","",names(dataset))

##Export the tidy dataset as a txt file
write.table(dataset,file="tidydataset.txt",row.names = FALSE)

##Average each variable for each activity and each subject
library(dplyr)
grouped <- group_by(dataset,subject,activity)
averages <- summarise_each(grouped,funs(mean))

##Export the averages dataset as a txt file
write.table(averages,file="averages.txt",row.names = FALSE)
