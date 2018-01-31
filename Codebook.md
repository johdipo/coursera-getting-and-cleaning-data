# Codebook

This codebook provides further information about this analysis.

### Data Source

The data comes from UCI Machine Learning Repository, more information available on: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### File list

Train dataset (7352 observations for 21 of the 30 volunteers):
* `X_train.txt`: Contains 561 features (measurements)
* `y_train.txt`: For each features of X_train, identifies the related activity
* `subject_train.txt`: For each observation of X_train gives the related volunteer.

Test dataset (7352 observations for 9 of the 30 volunteers):
* `X_test.txt`: Contains 561 features (measurements)
* `test.txt`: For each features of X_test, identify the related activity
* `subject_test.txt`: For each observation of X_test gives the related volunteer.

Features and activity labels
* `features.txt`: Names of the 561 features
* `activity_labels.txt`: Names and IDs for each of the 6 activities.

Other files such as raw signal data and information files are present in the data source but were not used.

### tidydataset.txt

Please consult README.md for further description about the script.

#### Features variables (measurements)

Tidydataset.txt contains the average by volounteers and by activities for each of the following feature. Please refere to data source for more information about the feature descriptions.

* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStdX`
* `tBodyAccStdY`
* `tBodyAccStdZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStdX`
* `tGravityAccStdY`
* `tGravityAccStdZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStdX`
* `tBodyAccJerkStdY`
* `tBodyAccJerkStdZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStdX`
* `tBodyGyroStdY`
* `tBodyGyroStdZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStdX`
* `tBodyGyroJerkStdY`
* `tBodyGyroJerkStdZ`
* `tBodyAccMagMean`
* `tBodyAccMagStd`
* `tGravityAccMagMean`
* `tGravityAccMagStd`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStd`
* `tBodyGyroMagMean`
* `tBodyGyroMagStd`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStd`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStdX`
* `fBodyAccStdY`
* `fBodyAccStdZ`
* `fBodyAccMeanFreqX`
* `fBodyAccMeanFreqY`
* `fBodyAccMeanFreqZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStdX`
* `fBodyAccJerkStdY`
* `fBodyAccJerkStdZ`
* `fBodyAccJerkMeanFreqX`
* `fBodyAccJerkMeanFreqY`
* `fBodyAccJerkMeanFreqZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStdX`
* `fBodyGyroStdY`
* `fBodyGyroStdZ`
* `fBodyGyroMeanFreqX`
* `fBodyGyroMeanFreqY`
* `fBodyGyroMeanFreqZ`
* `fBodyAccMagMean`
* `fBodyAccMagStd`
* `fBodyAccMagMeanFreq`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStd`
* `fBodyBodyAccJerkMagMeanFreq`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStd`
* `fBodyBodyGyroMagMeanFreq`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStd`
* `fBodyBodyGyroJerkMagMeanFreq`


#### Activity Labels

* `WALKING` (`1`)
* `WALKING_UPSTAIRS` (`2`)
* `WALKING_DOWNSTAIRS` (`3`)
* `SITTING` (`4`)
* `STANDING` (`5`)
* `LAYING` (`6`)