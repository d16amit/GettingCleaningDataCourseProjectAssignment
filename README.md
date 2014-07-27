GettingCleaningDataCourseProjectAssignment
==========================================

Set up:
=======

Download the data to working directory from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Extract the data in same folder.
Now you should following folders and files in your working directory:

Folders:
- Test
- Train

Files:
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


Scripts:
========

run_analaysis.R

This script will 
* load data from required text files.
* Merge Testdata as 1 data frame with only mean and std of measurements
* Merge Traindata as 1 data frame with only mean and std of measurements
* Join Test data and Train data
* Creates new tidy data set with average values of measurements by each activity and each subject.
* Updates the column names for better understanding.
* exports the tidy data set as "ActivityDataSet.txt" to working directory.
* 





