#Description of run_analysis.R
1. Script try change current directory to it's current location;
2. Check if directory `UCI HAR Dataset` exist;
  * If folder don't exist download file `http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip` and unzip it;
3. Read all necessary files:
  * `X_test.txt`
  * `y_test.txt`
  * `subject_test.txt`
  * `X_train.txt`
  * `train//y_train.txt`
  * `subject_train.txt`
  * `activity_labels.txt`
  * `features.txt`
4. Merge the training and the test sets to create one data set;
5. Appropriately label the data set with descriptive activity names;
6. Extract the measurements on the mean and standard deviation for each measurement; 
7. Set descriptive activity names to name the activities in the data set;
8. Create a second, independent tidy data set with the average of each variable for each activity and each subject;
9. Write tidy dataset to file `tidy_data.txt` as tab separated values.
