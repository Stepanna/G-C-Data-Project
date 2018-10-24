Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:

For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## Variable Descriptions
Name | Class | Description
-----|-------|------------
subject | integer | Subject number
activity | string | Activity subject performed
tBodyAccMeanX | numeric | Mean of body acceleration signals along the x-axis--time domain
tBodyAccMeanY | numeric | Mean of body acceleration signals along the y-axis--time domain
tBodyAccMeanZ | numeric | Mean of body acceleration signals along the z-axis--time domain
tBodyAccStdX | numeric | Standard deviation of body acceleration signals along the x-axis--time domain
tBodyAccStdY | numeric | Standard deviation of body acceleration signals along the y-axis--time domain
tBodyAccStdZ | numeric | Standard deviation of body acceleration signals along the z-axis--time domain
tGravityAccMeanX | numeric | Mean of gravity acceleration signals along the x-axis--time domain
tGravityAccMeanY | numeric | Mean of gravity acceleration signals along the y-axis--time domain
tGravityAccMeanZ | numeric | Mean of gravity acceleration signals along the z-axis--time domain
tGravityAccStdX | numeric | Standard deviation of gravity acceleration signals along the x-axis--time domain
tGravityAccStdY | numeric | Standard deviation of gravity acceleration signals along the y-axis--time domain
tGravityAccStdZ | numeric | Standard deviation of gravity acceleration signals along the z-axis--time domain
tBodyAccJerkMeanX | numeric | Mean of body jerk acceleration signals along the x-axis--time domain
tBodyAccJerkMeanY | numeric | Mean of body jerk acceleration signals along the y-axis--time domain
tBodyAccJerkMeanZ | numeric | Mean of body jerk acceleration signals along the z-axis--time domain
tBodyAccJerkStdX | numeric | Standard deviation of body jerk acceleration signals along the x-axis--time domain
tBodyAccJerkStdY | numeric | Standard deviation of body jerk acceleration signals along the y-axis--time domain
tBodyAccJerkStdZ | numeric | Standard deviation of body jerk acceleration signalsalong the z-axis--time domain
tBodyGyroMeanX | numeric | Mean of body gyroscope signals along the x-axis--time domain
tBodyGyroMeanY | numeric | Mean of body gyroscope signals along the y-axis--time domain
tBodyGyroMeanZ | numeric | Mean of body gyroscope signals along the z-axis--time domain
tBodyGyroStdX | numeric | Standard deviation of body gyroscope signals along the x-axis--time domain
tBodyGyroStdY | numeric | Standard deviation of body gyroscope signals along the y-axis--time domain
tBodyGyroStdZ | numeric | Standard deviation of body gyroscope signals along the z-axis--time domain
tBodyGyroJerkMeanX | numeric | Mean of body jerk gyroscope signals along the x-axis--time domain
tBodyGyroJerkMeanY | numeric | Mean of body jerk gyroscope signals along the y-axis--time domain
tBodyGyroJerkMeanZ | numeric | Mean of body jerk gyroscope signals along the z-axis--time domain
tBodyGyroJerkStdX | numeric | Standard deviation of body jerk gyroscope signals along the x-axis--time domain
tBodyGyroJerkStdY | numeric | Standard deviation of body jerk gyroscope signals along the y-axis--time domain
tBodyGyroJerkStdZ | numeric | Standard deviation of body jerk gyroscope signalsalong the z-axis--time domain
tBodyAccMagMean | numeric | Mean of magnitude (Euclidean norm) of body acceleration signals--time domain
tBodyAccMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body acceleration signals--time domain
tGravityAccMagMean | numeric | Mean of magnitude (Euclidean norm) of gravity acceleration signals--time domain
tGravityAccMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of gravity acceleration signals--time domain
tBodyAccJerkMagMean | numeric | Mean of magnitude (Euclidean norm) of body jerk acceleration signals--time domain
tBodyAccJerkMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body jerk acceleration signals--time domain
tBodyGyroMagMean | numeric | Mean of magnitude (Euclidean norm) of body gyroscope signals--time domain
tBodyGyroMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body gyroscope signals--time domain
tBodyGyroJerkMagMean | numeric | Mean of magnitude (Euclidean norm) of body jerk gyroscope signals--time domain
tBodyGyroJerkMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body jerk gyroscope signals--time domain
fBodyAccMeanX | numeric | Mean of body acceleration signals along the x-axis--frequency domain
fBodyAccMeanY | numeric | Mean of body acceleration signals along the y-axis--frequency domain
fBodyAccMeanZ | numeric | Mean of body acceleration signals along the z-axis--frequency domain
fBodyAccStdX | numeric | Standard deviation of body acceleration signals along the x-axis--frequency domain
fBodyAccStdY | numeric | Standard deviation of body acceleration signals along the y-axis--frequency domain
fBodyAccStdZ | numeric | Standard deviation of body acceleration signals along the z-axis--frequency domain
fBodyAccJerkMeanX | numeric | Mean of body jerk acceleration signals along the x-axis--frequency domain
fBodyAccJerkMeanY | numeric | Mean of body jerk acceleration signals along the y-axis--frequency domain
fBodyAccJerkMeanZ | numeric | Mean of body jerk acceleration signals along the z-axis--frequency domain
fBodyAccJerkStdX | numeric | Standard deviation of body jerk acceleration signals along the x-axis--frequency domain
fBodyAccJerkStdY | numeric | Standard deviation of body jerk acceleration signals along the y-axis--frequency domain
fBodyAccJerkStdZ | numeric | Standard deviation of body jerk acceleration signalsalong the z-axis--frequency domain
fBodyGyroMeanX | numeric | Mean of body gyroscope signals along the x-axis--frequency domain
fBodyGyroMeanY | numeric | Mean of body gyroscope signals along the y-axis--frequency domain
fBodyGyroMeanZ | numeric | Mean of body gyroscope signals along the z-axis--frequency domain
fBodyGyroStdX | numeric | Standard deviation of body gyroscope signals along the x-axis--frequency domain
fBodyGyroStdY | numeric | Standard deviation of body gyroscope signals along the y-axis--frequency domain
fBodyGyroStdZ | numeric | Standard deviation of body gyroscope signals along the z-axis--frequency domain
fBodyAccMagMean | numeric | Mean of magnitude (Euclidean norm) of body acceleration signals--frequency domain
fBodyAccMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body acceleration signals--frequency domain
fBodyAccJerkMagMean | numeric | Mean of magnitude (Euclidean norm) of body jerk acceleration signals--frequency domain
fBodyAccJerkMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body jerk acceleration signals--frequency domain
fBodyGyroMagMean | numeric | Mean of magnitude (Euclidean norm) of body gyroscope signals--frequency domain
fBodyGyroMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body gyroscope signals--frequency domain
fBodyGyroJerkMagMean | numeric | Mean of magnitude (Euclidean norm) of body jerk gyroscope signals--frequency domain
fBodyGyroJerkMagStd | numeric | Standard deviation of magnitude (Euclidean norm) of body jerk gyroscope signals--frequency domain 
