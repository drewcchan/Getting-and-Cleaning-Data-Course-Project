Getting and Cleaning Data Course Project CodeBook
==============
Data
--------------
The original data can be obtained from the following file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. A full description of the original data can be obtained from the following website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

The features_info.txt file in the original dataset gives a greater description of the meaning of the variables.

The tidy dataset is the tidy_data table obtained after running run_analysis.R. The tidy dataset is a transformation of the original dataset that combines the test and train data, selects for only the mean and standard deviation measurements, calculates the average of the selected columns and labels the columns and rows. Each transformation can be seen in the README.md document. 

Variables
---------
The columns in the tidy data include: 

-"ID": According to original README.txt file, "Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30."

-"Activity": 6 levels
-1 WALKING
-2 WALKING_UPSTAIRS
-3 WALKING_DOWNSTAIRS
-4 SITTING
-5 STANDING
-6 LAYING

-"Mean tBodyAcc.mean...X"

-"Mean tBodyAcc.mean...Y"

-"Mean tBodyAcc.mean...Z"

-"Mean tBodyAcc.std...X"

-"Mean tBodyAcc.std...Y"

-"Mean tBodyAcc.std...Z"

-"Mean tGravityAcc.mean...X"

-"Mean tGravityAcc.mean...Y"

-"Mean tGravityAcc.mean...Z"

-"Mean tGravityAcc.std...X"

-"Mean tGravityAcc.std...Y"

-"Mean tGravityAcc.std...Z"

-"Mean tBodyAccJerk.mean...X"

-"Mean tBodyAccJerk.mean...Y"

-"Mean tBodyAccJerk.mean...Z"

-"Mean tBodyAccJerk.std...X"

-"Mean tBodyAccJerk.std...Y"

-"Mean tBodyAccJerk.std...Z"

-"Mean tBodyGyro.mean...X"

-"Mean tBodyGyro.mean...Y"

-"Mean tBodyGyro.mean...Z"

-"Mean tBodyGyro.std...X"

-"Mean tBodyGyro.std...Y"

-"Mean tBodyGyro.std...Z"

-"Mean tBodyGyroJerk.mean...X"

-"Mean tBodyGyroJerk.mean...Y"

-"Mean tBodyGyroJerk.mean...Z"

-"Mean tBodyGyroJerk.std...X"

-"Mean tBodyGyroJerk.std...Y"

-"Mean tBodyGyroJerk.std...Z"

-"Mean tBodyAccMag.mean.."

-"Mean tBodyAccMag.std.."

-"Mean tGravityAccMag.mean.."

-"Mean tGravityAccMag.std.."

-"Mean tBodyAccJerkMag.mean.."

-"Mean tBodyAccJerkMag.std.."

-"Mean tBodyGyroMag.mean.."

-"Mean tBodyGyroMag.std.."

-"Mean tBodyGyroJerkMag.mean.."

-"Mean tBodyGyroJerkMag.std.."

-"Mean fBodyAcc.mean...X"

-"Mean fBodyAcc.mean...Y"

-"Mean fBodyAcc.mean...Z"

-"Mean fBodyAcc.std...X"

-"Mean fBodyAcc.std...Y"

-"Mean fBodyAcc.std...Z"

-"Mean fBodyAcc.meanFreq...X"

-"Mean fBodyAcc.meanFreq...Y"

-"Mean fBodyAcc.meanFreq...Z"

-"Mean fBodyAccJerk.mean...X"

-"Mean fBodyAccJerk.mean...Y"

-"Mean fBodyAccJerk.mean...Z"

-"Mean fBodyAccJerk.std...X"

-"Mean fBodyAccJerk.std...Y"

-"Mean fBodyAccJerk.std...Z"

-"Mean fBodyAccJerk.meanFreq...X"

-"Mean fBodyAccJerk.meanFreq...Y"

-"Mean fBodyAccJerk.meanFreq...Z"

-"Mean fBodyGyro.mean...X"

-"Mean fBodyGyro.mean...Y"

-"Mean fBodyGyro.mean...Z"

-"Mean fBodyGyro.std...X"

-"Mean fBodyGyro.std...Y"

-"Mean fBodyGyro.std...Z"

-"Mean fBodyGyro.meanFreq...X"

-"Mean fBodyGyro.meanFreq...Y"

-"Mean fBodyGyro.meanFreq...Z"

-"Mean fBodyAccMag.mean.."

-"Mean fBodyAccMag.std.."

-"Mean fBodyAccMag.meanFreq.."

-"Mean fBodyBodyAccJerkMag.mean.."

-"Mean fBodyBodyAccJerkMag.std.."

-"Mean fBodyBodyAccJerkMag.meanFreq.."

-"Mean fBodyBodyGyroMag.mean.."

-"Mean fBodyBodyGyroMag.std.."

-"Mean fBodyBodyGyroMag.meanFreq.."

-"Mean fBodyBodyGyroJerkMag.mean.."

-"Mean fBodyBodyGyroJerkMag.std.."

-"Mean fBodyBodyGyroJerkMag.meanFreq.."