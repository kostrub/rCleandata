#Description of tidy dataset
The data set contains average of each variable for each activity and each subject. It was created by applying changes described in README. 

##Variables
  * Outcome - type of activity. There 6 activities (See `activity_labels.txt`).
  * Subject - Id of subject doing activity, there is 30 subjects.
  * Rest Variables - Rest variables is means of means and standart deviation variables in original dataset. Their description can be found in Readme.txt.

##The original dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Directories `Inertial Signals` were deleted because they was not used.
