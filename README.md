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

-----
#License notes
This dataset belongs to:
```
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on
Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of 
Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their
institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```
