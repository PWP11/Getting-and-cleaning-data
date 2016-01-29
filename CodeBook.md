Introduction
------------

This codebook describes the variables and data in "averages.txt" and the
transformations performed to clean up the data.

Background
----------

The data represent data collected from the accelerometers from the
Samsung Galaxy SII smartphone. The source data was obtained from
experiments carried out with a group of 30 volunteers aged 19-48 years.
Each person performed six activities (walking, walking upstairs, walking
downstairs, sitting, standing, and laying) wearing a Samsung Galaxy SII
smartphone. A full description is available at
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>
where the source data was obtained. See also the following publication:

> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
> Reyes-Ortiz. Human Activity Recognition on Smartphones using a
> Multiclass Hardware-Friendly Support Vector Machine. International
> Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
> Spain. Dec 2012

The source data was downloaded from
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.
The data in averages.txt were derived from this source data.

Variable description
--------------------

The first variable **subject** contains an integer 1-30 identifying the
volunteer who generated the measurement data.

The second variable **activity** indicates which of the six activities
(walking, walking upstairs, walking downstairs, sitting, standing or
laying) was being carried out when the measurements were taken.

The remaining variables are the average for each volunteer and each
activity of a subset of variables from the source data, the source data
having been provided normalised (and therefore unit-free). The variables
selected from the source data are the mean and standard deviation of
each (normalised) measurement and have names constructed as follows:

-   a letter **t** or **f** denoting whether it is a "time" measurement
    or the frequency domain signal from applying a Fast Fourier
    Transform respectively

-   **Body** or **Gravity** denoting body or gravity acceleration
    respectively

-   **Acc** or **Gyro** denoting whether the measurement is from the
    accelerometer or gyroscope respectively

-   the inclusion of **Jerk** denotes a Jerk signal

-   the inclusion of **Mag** denotes the magnitude calculated using the
    Euclidean norm

-   **Mean** or **Std** denoting whether the data is the mean or
    standard variation respectively of the relevant measurement

-   the inclusion of **X**, **Y** or **Z** denoting the 3-axial signals
    in the X, Y and Z directions respectively.

Description of the data
-----------------------

The datafile averages.txt has a header row containing the variable
names, 180 observations (the number of combinations of 30 volunteers and
6 activities) and the following 68 variables:

<table>
<thead>
<tr class="header">
<th align="left">Variable name</th>
<th align="left">Description</th>
<th align="left">Value range</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">subject</td>
<td align="left">identifies the volunteer</td>
<td align="left">integer [1,30]</td>
</tr>
<tr class="even">
<td align="left">activity</td>
<td align="left">identifies the activity</td>
<td align="left">WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccMeanX</td>
<td align="left">average of tBodyAcc-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccMeanY</td>
<td align="left">average of tBodyAcc-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccMeanZ</td>
<td align="left">average of tBodyAcc-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tGravityAccMeanX</td>
<td align="left">average of tGravityAcc-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tGravityAccMeanY</td>
<td align="left">average of tGravityAcc-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tGravityAccMeanZ</td>
<td align="left">average of tGravityAcc-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerkMeanX</td>
<td align="left">average of tBodyAccJerk-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerkMeanY</td>
<td align="left">average of tBodyAccJerk-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerkMeanZ</td>
<td align="left">average of tBodyAccJerk-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroMeanX</td>
<td align="left">average of tBodyGyro-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroMeanY</td>
<td align="left">average of tBodyGyro-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroMeanZ</td>
<td align="left">average of tBodyGyro-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerkMeanX</td>
<td align="left">average of tBodyGyroJerk-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerkMeanY</td>
<td align="left">average of tBodyGyroJerk-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerkMeanZ</td>
<td align="left">average of tBodyGyroJerk-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccMagMean</td>
<td align="left">average of tBodyAccMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tGravityAccMagMean</td>
<td align="left">average of tGravityAccMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerkMagMean</td>
<td align="left">average of tBodyAccJerkMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroMagMean</td>
<td align="left">average of tBodyGyroMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerkMagMean</td>
<td align="left">average of tBodyGyroJerkMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccMeanX</td>
<td align="left">average of fBodyAcc-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccMeanY</td>
<td align="left">average of fBodyAcc-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccMeanZ</td>
<td align="left">average of fBodyAcc-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerkMeanX</td>
<td align="left">average of fBodyAccJerk-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerkMeanY</td>
<td align="left">average of fBodyAccJerk-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerkMeanZ</td>
<td align="left">average of fBodyAccJerk-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyroMeanX</td>
<td align="left">average of fBodyGyro-mean()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyGyroMeanY</td>
<td align="left">average of fBodyGyro-mean()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyroMeanZ</td>
<td align="left">average of fBodyGyro-mean()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccMagMean</td>
<td align="left">average of fBodyAccMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyAccJerkMagMean</td>
<td align="left">average of fBodyBodyAccJerkMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroMagMean</td>
<td align="left">average of fBodyBodyGyroMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroJerkMagMean</td>
<td align="left">average of fBodyBodyGyroJerkMag-mean()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccStdX</td>
<td align="left">average of tBodyAcc-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccStdY</td>
<td align="left">average of tBodyAcc-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccStdZ</td>
<td align="left">average of tBodyAcc-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tGravityAccStdX</td>
<td align="left">average of tGravityAcc-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tGravityAccStdY</td>
<td align="left">average of tGravityAcc-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tGravityAccStdZ</td>
<td align="left">average of tGravityAcc-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerkStdX</td>
<td align="left">average of tBodyAccJerk-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerkStdY</td>
<td align="left">average of tBodyAccJerk-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerkStdZ</td>
<td align="left">average of tBodyAccJerk-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroStdX</td>
<td align="left">average of tBodyGyro-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroStdY</td>
<td align="left">average of tBodyGyro-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroStdZ</td>
<td align="left">average of tBodyGyro-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerkStdX</td>
<td align="left">average of tBodyGyroJerk-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerkStdY</td>
<td align="left">average of tBodyGyroJerk-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerkStdZ</td>
<td align="left">average of tBodyGyroJerk-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccMagStd</td>
<td align="left">average of tBodyAccMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tGravityAccMagStd</td>
<td align="left">average of tGravityAccMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerkMagStd</td>
<td align="left">average of tBodyAccJerkMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroMagStd</td>
<td align="left">average of tBodyGyroMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerkMagStd</td>
<td align="left">average of tBodyGyroJerkMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccStdX</td>
<td align="left">average of fBodyAcc-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccStdY</td>
<td align="left">average of fBodyAcc-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccStdZ</td>
<td align="left">average of fBodyAcc-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerkStdX</td>
<td align="left">average of fBodyAccJerk-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerkStdY</td>
<td align="left">average of fBodyAccJerk-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerkStdZ</td>
<td align="left">average of fBodyAccJerk-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyGyroStdX</td>
<td align="left">average of fBodyGyro-std()-X</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyroStdY</td>
<td align="left">average of fBodyGyro-std()-Y</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyGyroStdZ</td>
<td align="left">average of fBodyGyro-std()-Z</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccMagStd</td>
<td align="left">average of fBodyAccMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyAccJerkMagStd</td>
<td align="left">average of fBodyBodyAccJerkMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroMagStd</td>
<td align="left">average of fBodyBodyGyroMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroJerkMagStd</td>
<td align="left">average of fBodyBodyGyroJerkMag-std()</td>
<td align="left">decimal (-1,1)</td>
</tr>
</tbody>
</table>

Data cleaning approach
----------------------

The source data were supplied in a number of text files comprising
volunteer (subject) identifier, activity and activity identifier,
measurements (features) and descriptions of those measurements. These
data had further been split into training and test datasets.

The data were read in using the following code:

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

The data were then merged to form one dataset, including appending the
appropriate activity and feature labels.

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

Next, the features relating to mean and standard deviation were
extracted.

    ##Extract only variables relating to Mean Value "mean()" and Standard deviation "std()"
    ##in Xdata and add subject and activity
    keepmean <- grep("-mean\\(\\)",names(Xdata))
    keepstd <- grep("-std\\(\\)",names(Xdata))
    dataset <- cbind(subject,Ydata,Xdata[,keepmean],Xdata[,keepstd])
    dataset <- dataset[,-2]

The variable names were tidied by removing brackets and hyphens, as
follows:

    ##Remove the "()" and the "-" from the variable names
    names(dataset) <- sub("-mean\\(\\)","Mean",names(dataset))
    names(dataset) <- sub("-std\\(\\)","Std",names(dataset))
    names(dataset) <- sub("-","",names(dataset))

Finally, we calculate the average of each measurement for each
combination of volunteer (subject) and activity using the dplyr package:

    ##Average each variable for each activity and each subject
    library(dplyr)
    grouped <- group_by(dataset,subject,activity)
    averages <- summarise_each(grouped,funs(mean))

The last step is to export the final dataset as a text file.

    write.table(averages,file="averages.txt",row.names = FALSE)
