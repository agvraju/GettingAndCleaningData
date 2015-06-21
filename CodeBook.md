#Code Book 
=================
##References:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 
3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal 
was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Following Activities are recorded on the Data File 
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING


The above data is filtered to include only the Mean and Standard Deviation values. A independent tidy data set with the 
average of each Mean and Standard deviation variables for each activity and each subject are recorded.
Below are the Variables in each of the column.
* SUBJECT_ID
* ACTIVITY
* ACTIVITY_ID
* Average.Time.BodyAcc-mean()-X 
* Average.Time.BodyAcc-mean()-Y 
* Average.Time.BodyAcc-mean()-Z 
* Average.Time.GravityAcc-mean()-X 
* Average.Time.GravityAcc-mean()-Y 
* Average.Time.GravityAcc-mean()-Z 
* Average.Time.BodyAccJerk-mean()-X 
* Average.Time.BodyAccJerk-mean()-Y 
* Average.Time.BodyAccJerk-mean()-Z 
* Average.Time.BodyGyro-mean()-X
* Average.Time.BodyGyro-mean()-Y
* Average.Time.BodyGyro-mean()-Z
* Average.Time.BodyGyroJerk-mean()-X 
* Average.Time.BodyGyroJerk-mean()-Y 
* Average.Time.BodyGyroJerk-mean()-Z 
* Average.Time.BodyAccMag-mean() 
* Average.Time.GravityAccMag-mean()
* Average.Time.BodyAccJerkMag-mean() 
* Average.Time.BodyGyroMag-mean()
* Average.Time.BodyGyroJerkMag-mean()
* Average.Frequency.BodyAcc-mean()-X 
* Average.Frequency.BodyAcc-mean()-Y 
* Average.Frequency.BodyAcc-mean()-Z 
* Average.Frequency.BodyAccJerk-mean()-X
* Average.Frequency.BodyAccJerk-mean()-Y 
* Average.Frequency.BodyAccJerk-mean()-Z 
* Average.Frequency.BodyGyro-mean()-X 
* Average.Frequency.BodyGyro-mean()-Y 
* Average.Frequency.BodyGyro-mean()-Z
* Average.Frequency.BodyAccMag-mean()
* Average.Frequency.BodyBodyAccJerkMag-mean()
* Average.Frequency.BodyBodyGyroMag-mean()
* Average.Frequency.BodyBodyGyroJerkMag-mean() 
* Average.Time.BodyAcc-std()-X 
* Average.Time.BodyAcc-std()-Y 
* Average.Time.BodyAcc-std()-Z
* Average.Time.GravityAcc-std()-X 
* Average.Time.GravityAcc-std()-Y
* Average.Time.GravityAcc-std()-Z
* Average.Time.BodyAccJerk-std()-X 
* Average.Time.BodyAccJerk-std()-Y 
* Average.Time.BodyAccJerk-std()-Z 
* Average.Time.BodyGyro-std()-X 
* Average.Time.BodyGyro-std()-Y 
* Average.Time.BodyGyro-std()-Z 
* Average.Time.BodyGyroJerk-std()-X 
* Average.Time.BodyGyroJerk-std()-Y
* Average.Time.BodyGyroJerk-std()-Z 
* Average.Time.BodyAccMag-std() 
* Average.Time.GravityAccMag-std()
* Average.Time.BodyAccJerkMag-std()
* Average.Time.BodyGyroMag-std() 
* Average.Time.BodyGyroJerkMag-std() 
* Average.Frequency.BodyAcc-std()-X 
* Average.Frequency.BodyAcc-std()-Y
* Average.Frequency.BodyAcc-std()-Z 
* Average.Frequency.BodyAccJerk-std()-X
* Average.Frequency.BodyAccJerk-std()-Y
* Average.Frequency.BodyAccJerk-std()-Z
* Average.Frequency.BodyGyro-std()-X 
* Average.Frequency.BodyGyro-std()-Y
* Average.Frequency.BodyGyro-std()-Z 
* Average.Frequency.BodyAccMag-std() 
* Average.Frequency.BodyBodyAccJerkMag-std() 
* Average.Frequency.BodyBodyGyroMag-std() 
* Average.Frequency.BodyBodyGyroJerkMag-std()

### Data Transformations - R script called run_analysis.R does the following. 
  *  Merges the training and the test sets to create one data set.
  *  Extracts only the measurements on the mean and standard deviation for each measurement. 
  *  Uses descriptive activity names to name the activities in the data set
  *  Appropriately labels the data set with descriptive variable names. 
  *  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

