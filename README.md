#Description of run_analysis.R
1. Check if folder `UCI HAR Dataset` exist;
  * If folder don't exist download file `http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip` and unzip it;
2. Read all necessary files:
  * `X_test.txt`
  * `y_test.txt`
  * `subject_test.txt`
  * `X_train.txt`
  * `train//y_train.txt`
  * `subject_train.txt`
  * `activity_labels.txt`
  * `features.txt`
3. Merges the training and the test sets to create one data set;
4. Appropriately labels the data set with descriptive activity names;
5. Extract the measurements on the mean and standard deviation for each measurement; 
6. Set descriptive activity names to name the activities in the data set;
7.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject;
8. Write tidy dataset to file `tidy_data.txt` as tab separated values.
