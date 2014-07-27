---
title: "CodeBook"
author: "Amit Sharma"
date: "Saturday, July 26, 2014"
output: pdf_document
---


Outpt data is tidy data set with the average of each variable for each activity and each subject. 

Data Dimentions:
180 obs. of  68 variables

Variables in the data set are

- SubjectLabel : identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.   
- ActivityName: Identifies the activity being performed by Subject when measurement was taken. Its 6 values are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING  


Other Variables are average of measurements explained in feature.txt file.

- AverageOf tBodyAcc-mean()-X
- AverageOf tBodyAcc-mean()-Y
- AverageOf tBodyAcc-mean()-Z
- AverageOf tGravityAcc-mean()-X
- AverageOf tGravityAcc-mean()-Y
- AverageOf tGravityAcc-mean()-Z
- AverageOf tBodyAccJerk-mean()-X
- AverageOf tBodyAccJerk-mean()-Y
- AverageOf tBodyAccJerk-mean()-Z
- AverageOf tBodyGyro-mean()-X
- AverageOf tBodyGyro-mean()-Y
- AverageOf tBodyGyro-mean()-Z
- AverageOf tBodyGyroJerk-mean()-X
- AverageOf tBodyGyroJerk-mean()-Y
- AverageOf tBodyGyroJerk-mean()-Z
- AverageOf tBodyAccMag-mean()
- AverageOf tGravityAccMag-mean()
- AverageOf tBodyAccJerkMag-mean()
- AverageOf tBodyGyroMag-mean()
- AverageOf tBodyGyroJerkMag-mean()
- AverageOf fBodyAcc-mean()-X
- AverageOf fBodyAcc-mean()-Y
- AverageOf fBodyAcc-mean()-Z
- AverageOf fBodyAccJerk-mean()-X
- AverageOf fBodyAccJerk-mean()-Y
- AverageOf fBodyAccJerk-mean()-Z
- AverageOf fBodyGyro-mean()-X
- AverageOf fBodyGyro-mean()-Y
- AverageOf fBodyGyro-mean()-Z
- AverageOf fBodyAccMag-mean()
- AverageOf fBodyBodyAccJerkMag-mean()
- AverageOf fBodyBodyGyroMag-mean()
- AverageOf fBodyBodyGyroJerkMag-mean()
- AverageOf tBodyAcc-std()-X
- AverageOf tBodyAcc-std()-Y
- AverageOf tBodyAcc-std()-Z
- AverageOf tGravityAcc-std()-X
- AverageOf tGravityAcc-std()-Y
- AverageOf tGravityAcc-std()-Z
- AverageOf tBodyAccJerk-std()-X
- AverageOf tBodyAccJerk-std()-Y
- AverageOf tBodyAccJerk-std()-Z
- AverageOf tBodyGyro-std()-X
- AverageOf tBodyGyro-std()-Y
- AverageOf tBodyGyro-std()-Z
- AverageOf tBodyGyroJerk-std()-X
- AverageOf tBodyGyroJerk-std()-Y
- AverageOf tBodyGyroJerk-std()-Z
- AverageOf tBodyAccMag-std()
- AverageOf tGravityAccMag-std()
- AverageOf tBodyAccJerkMag-std()
- AverageOf tBodyGyroMag-std()
- AverageOf tBodyGyroJerkMag-std()
- AverageOf fBodyAcc-std()-X
- AverageOf fBodyAcc-std()-Y
- AverageOf fBodyAcc-std()-Z
- AverageOf fBodyAccJerk-std()-X
- AverageOf fBodyAccJerk-std()-Y
- AverageOf fBodyAccJerk-std()-Z
- AverageOf fBodyGyro-std()-X
- AverageOf fBodyGyro-std()-Y
- AverageOf fBodyGyro-std()-Z
- AverageOf fBodyAccMag-std()
- AverageOf fBodyBodyAccJerkMag-std()
- AverageOf fBodyBodyGyroMag-std()
- AverageOf fBodyBodyGyroJerkMag-std()
