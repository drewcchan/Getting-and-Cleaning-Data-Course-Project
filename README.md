README
===============
This document describes the elements of the run_analysis.R script and how the tidy data set was created.

-1. Merges the training and the test sets to create one data set.
-The train data was obtained in lines 11-15.
-The test data was obtained in lines 18-22.
-The train and test data were merged in line 25.

-2. Extracts only the measurements on the mean and standard deviation for each measurement. 
-The measurements for mean and standard deviation were selected in line 28.

-3. Uses descriptive activity names to name the activities in the data set
-The activity names were added in line 32.

-4. Appropriately labels the data set with descriptive variable names. 
-For the complete data, the variable names were added in lines 12 and 19.
-For the tidy data, the variable names were updated to add "Mean" on line                 39.

-5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
-The tidy data set was created in lines 34-40.