# Peer Assessments - Getting and Cleaning Data Course Project

##Source of data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Only pre-processed data (subject_[set].txt, X_[set].txt, y_[set].txt) were used. Raw data in "Inertial Signals" were not used.

## Processing procedure
Please refer to README.md

## Data definition 
1. Please refer to feature_info.txt included in the Source of Data for the meanings of the features.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. In this exercises, only measurements of features on the mean and standard deviation were included (X_*.txt). 
3. Subject and activities informations (from subject_*.txt and y_*.txt) were joined with the measurements line by line.
4. Data from both sets were combined
4. Averages of each included variables, grouped by subject and activities were calculated

## List of columns included 
(except subject and activities, all columns were averages of the variable 
- subject
- activity
- tBodyAcc.mean...X (Average of tBodyAcc.mean...X in X_*.txt)
- tBodyAcc.mean...Y (Average of tBodyAcc.mean...Y in X_*.txt)
- tBodyAcc.mean...Z (Average of tBodyAcc.mean...Z in X_*.txt)
- tBodyAcc.std...X (Average of tBodyAcc.std...X in X_*.txt)
- tBodyAcc.std...Y (Average of tBodyAcc.std...Y in X_*.txt)
- tBodyAcc.std...Z (Average of tBodyAcc.std...Z in X_*.txt)
- tGravityAcc.mean...X (Average of tGravityAcc.mean...X in X_*.txt)
- tGravityAcc.mean...Y (Average of tGravityAcc.mean...Y in X_*.txt)
- tGravityAcc.mean...Z (Average of tGravityAcc.mean...Z in X_*.txt)
- tGravityAcc.std...X (Average of tGravityAcc.std...X in X_*.txt)
- tGravityAcc.std...Y (Average of tGravityAcc.std...Y in X_*.txt)
- tGravityAcc.std...Z (Average of tGravityAcc.std...Z in X_*.txt)
- tBodyAccJerk.mean...X (Average of tBodyAccJerk.mean...X in X_*.txt)
- tBodyAccJerk.mean...Y""tBodyAccJerk.mean...Z (Average of tBodyAccJerk.mean...Y""tBodyAccJerk.mean...Z in X_*.txt)
- tBodyAccJerk.std...X (Average of tBodyAccJerk.std...X in X_*.txt)
- tBodyAccJerk.std...Y (Average of tBodyAccJerk.std...Y in X_*.txt)
- tBodyAccJerk.std...Z (Average of tBodyAccJerk.std...Z in X_*.txt)
- tBodyGyro.mean...X (Average of tBodyGyro.mean...X in X_*.txt)
- tBodyGyro.mean...Y (Average of tBodyGyro.mean...Y in X_*.txt)
- tBodyGyro.mean...Z (Average of tBodyGyro.mean...Z in X_*.txt)
- tBodyGyro.std...X (Average of tBodyGyro.std...X in X_*.txt)
- tBodyGyro.std...Y (Average of tBodyGyro.std...Y in X_*.txt)
- tBodyGyro.std...Z (Average of tBodyGyro.std...Z in X_*.txt)
- tBodyGyroJerk.mean...X (Average of tBodyGyroJerk.mean...X in X_*.txt)
- tBodyGyroJerk.mean...Y (Average of tBodyGyroJerk.mean...Y in X_*.txt)
- tBodyGyroJerk.mean...Z (Average of tBodyGyroJerk.mean...Z in X_*.txt)
- tBodyGyroJerk.std...X (Average of tBodyGyroJerk.std...X in X_*.txt)
- tBodyGyroJerk.std...Y (Average of tBodyGyroJerk.std...Y in X_*.txt)
- tBodyGyroJerk.std...Z (Average of tBodyGyroJerk.std...Z in X_*.txt)
- tBodyAccMag.mean.. (Average of tBodyAccMag.mean.. in X_*.txt)
- tBodyAccMag.std.. (Average of tBodyAccMag.std.. in X_*.txt)
- tGravityAccMag.mean.. (Average of tGravityAccMag.mean.. in X_*.txt)
- tGravityAccMag.std.. (Average of tGravityAccMag.std.. in X_*.txt)
- tBodyAccJerkMag.mean.. (Average of tBodyAccJerkMag.mean.. in X_*.txt)
- tBodyAccJerkMag.std.. (Average of tBodyAccJerkMag.std.. in X_*.txt)
- tBodyGyroMag.mean.. (Average of tBodyGyroMag.mean.. in X_*.txt)
- tBodyGyroMag.std.. (Average of tBodyGyroMag.std.. in X_*.txt)
- tBodyGyroJerkMag.mean.. (Average of tBodyGyroJerkMag.mean.. in X_*.txt)
- tBodyGyroJerkMag.std.. (Average of tBodyGyroJerkMag.std.. in X_*.txt)
- fBodyAcc.mean...X (Average of fBodyAcc.mean...X in X_*.txt)
- fBodyAcc.mean...Y (Average of fBodyAcc.mean...Y in X_*.txt)
- fBodyAcc.mean...Z (Average of fBodyAcc.mean...Z in X_*.txt)
- fBodyAcc.std...X (Average of fBodyAcc.std...X in X_*.txt)
- fBodyAcc.std...Y (Average of fBodyAcc.std...Y in X_*.txt)
- fBodyAcc.std...Z (Average of fBodyAcc.std...Z in X_*.txt)
- fBodyAccJerk.mean...X (Average of fBodyAccJerk.mean...X in X_*.txt)
- fBodyAccJerk.mean...Y (Average of fBodyAccJerk.mean...Y in X_*.txt)
- fBodyAccJerk.mean...Z (Average of fBodyAccJerk.mean...Z in X_*.txt)
- fBodyAccJerk.std...X (Average of fBodyAccJerk.std...X in X_*.txt)
- fBodyAccJerk.std...Y (Average of fBodyAccJerk.std...Y in X_*.txt)
- fBodyAccJerk.std...Z (Average of fBodyAccJerk.std...Z in X_*.txt)
- fBodyGyro.mean...X (Average of fBodyGyro.mean...X in X_*.txt)
- fBodyGyro.mean...Y (Average of fBodyGyro.mean...Y in X_*.txt)
- fBodyGyro.mean...Z (Average of fBodyGyro.mean...Z in X_*.txt)
- fBodyGyro.std...X (Average of fBodyGyro.std...X in X_*.txt)
- fBodyGyro.std...Y (Average of fBodyGyro.std...Y in X_*.txt)
- fBodyGyro.std...Z (Average of fBodyGyro.std...Z in X_*.txt)
- fBodyAccMag.mean.. (Average of fBodyAccMag.mean.. in X_*.txt)
- fBodyAccMag.std.. (Average of fBodyAccMag.std.. in X_*.txt)
- fBodyBodyAccJerkMag.mean.. (Average of fBodyBodyAccJerkMag.mean.. in X_*.txt)
- fBodyBodyAccJerkMag.std.. (Average of fBodyBodyAccJerkMag.std.. in X_*.txt)
- fBodyBodyGyroMag.mean.. (Average of fBodyBodyGyroMag.mean.. in X_*.txt)
- fBodyBodyGyroMag.std.. (Average of fBodyBodyGyroMag.std.. in X_*.txt)
- fBodyBodyGyroJerkMag.mean.. (Average of fBodyBodyGyroJerkMag.mean.. in X_*.txt)
- fBodyBodyGyroJerkMag.std.. (Average of fBodyBodyGyroJerkMag.std.. in X_*.txt)

## Units
- Acceleration Data (\*Acc\*): standard gravity units 'g'
- Gyroscopic Data (\*Gyro\*): radians/second

