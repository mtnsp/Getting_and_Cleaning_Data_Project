## Getting_and_Cleaning_Data_Project
This is the course project for "Getting and Cleaning Data".

The following is the description and explanation of the R script: run_analysis.R.

The line numbers mentioned below refer to the corresponding lines in the R script.


<br>
Line 3: Create a folder named "data" in the current working directory, if there does not exist such a folder. 

Line 7: Assign a URL to a variable named "file_url".

Line 8: Download the zip file.

Line 9: Unzip the file. A folder named "UCI HAR Dataset" that contains data will be created in the current working directory.


<br>
Lines 15-36 contain the scripts for completing the step 1: Merges the training and the test sets to create one data set.

Line 18: Get the training feature set.

Line 19: Get the subject number for the corresponding feature set.

Line 20: Get the activity code for the corresponding feature set.

Line 22: Combine the above three data frames to form a single training set.

Lines 26-30 are for getting the test set. The logic is the same as getting the training set.

Line 34: Merge the training set and the test set as a single data set.


<br>
Lines 40-50 contain the scripts for completing the step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

Line 43: Read in feature names.

Lines 44-45: Get the indices for the feature names that contain either "-mean()" or "-std()". This is realized by the grep function.

Line 48: Extract only the mean and standard deviation measures.


<br>
Lines 54-63 contain the scripts for completing the step 3: Uses descriptive activity names to name the activities in the data set.

Line 57: Read in the activity labels file.

Line 58: Load the "dplyr" package for using the mutate function below. Here a warning will be generated, but it doesn't matter.

Line 59: Create a new column named "activity" to contain descriptive activity names.

Line 61: Drop the activity code, since we have created the descriptive names in the above step.


<br>
Lines 67-78 contain the scripts for completing the step 4: Appropriately labels the data set with descriptive variable names.

Line 70: Get the feature names. The data "feature" and the indices "col_idx" were generated in the step 2. Also, I transformed a factor variable to a character variable.

Line 71: Load the "stringr" package for using the str_replace_all function below.

Line 72: Remove the parentheses from the feature names.

Line 73: Replace "-" with "_" in the feature names.

Line 76: Assign the names to the data set.


<br>
Lines 82-94 contain the scripts for completing the step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Line 86: Load the "reshape2" package for using the following melt and dcast functions.

Line 87: Transform the data set so that a molten data set forms with 4 variables: "subject", "activity", "variable", and "value".

Line 88: Get the requested tidy data set, which contains the average of each variable for each subject and each activity.

Line 91: Generate the new variable names by prefixing "mean_" before the old variable names.

Line 92: Label the tidy data set.


<br>
Line 99: Write the tidy data set to a file.

