## Getting and Data cleaning - Course project
## Code book to describe the variables

### Purpose

The goal of this project is to clean up the data provided and create a tidy data set.The data is from Samsung phone regarding the activity of a experiment sample.

### Raw Data

The data provided contains train and test data along with sample information.The train and test data contains 561 fields which contains with values of mean,mean,standard deviation,magnitude of various readings of accelerometer and gyroscope.As expected the values are all numerical values.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

## Tidy data

The final tidy data consists of 81 fields.79 fields are correspond to mean and standard deviation of various signals that are collected as mentioned above.The other 2 are subject and their activity information.The fields from the tidy data set are below.

* subject field identifies a unique subject.This is numerical field contains values from 1 to 30
*activity_desc field consists of activity description of the activity.This is a factor field which consists of 6 levels.The levels are laying,sitting,standing,walking,walking upstairs,walking downstairs.
* Mean fields contain mean at the end of the field followed by the axis of the measurements.The mean fields are numerical values as expected.

    * tBodyAcc_mean_X
    * tBodyAcc_mean_Y
    * tBodyAcc_mean_Z
    * tGravityAcc_mean_X
    * tGravityAcc_mean_Y
    * tGravityAcc_mean_Z
    * tBodyAccJerk_mean_X
    * tBodyAccJerk_mean_Y
    * tBodyAccJerk_mean_Z
    * tBodyGyro_mean_X
    * tBodyGyro_mean_Y
    * tBodyGyro_mean_Z
    * tBodyGyroJerk_mean_X
    * tBodyGyroJerk_mean_Y
    * tBodyGyroJerk_mean_Z
    * tBodyAccMag_mean
    * tGravityAccMag_mean
    * tBodyAccJerkMag_mean
    * tBodyGyroMag_mean
    * tBodyGyroJerkMag_mean
    * fBodyAcc_mean_X
    * fBodyAcc_mean_Y
    * fBodyAcc_mean_Z
    * fBodyAcc_meaneq_X
    * fBodyAcc_meaneq_Y
    * fBodyAcc_meaneq_Z
    * fBodyAccJerk_mean_X
    * fBodyAccJerk_mean_Y
    * fBodyAccJerk_mean_Z
    * fBodyAccJerk_meaneq_X
    * fBodyAccJerk_meaneq_Y
    * fBodyAccJerk_meaneq_Z
    * fBodyGyro_mean_X
    * fBodyGyro_mean_Y
    * fBodyGyro_mean_Z
    * fBodyGyro_meaneq_X
    * fBodyGyro_meaneq_Y
    * fBodyGyro_meaneq_Z
    * fBodyAccMag_mean
    * fBodyAccMag_meaneq
    * fBodyBodyAccJerkMag_mean
    * fBodyBodyAccJerkMag_meaneq
    * fBodyBodyGyroMag_mean
    * fBodyBodyGyroMag_meaneq
    * fBodyBodyGyroJerkMag_mean
    * fBodyBodyGyroJerkMag_meaneq 

* standard fields contain std at the end of the field followed by the axis of the measurements.The std fields are numerical values as expected.

    * tBodyAcc_std_X
    * tBodyAcc_std_Y
    * tBodyAcc_std_Z
    * tGravityAcc_std_X
    * tGravityAcc_std_Y
    * tGravityAcc_std_Z
    * tBodyAccJerk_std_X
    * tBodyAccJerk_std_Y
    * tBodyAccJerk_std_Z
    * tBodyGyro_std_X
    * tBodyGyro_std_Y
    * tBodyGyro_std_Z
    * tBodyGyroJerk_std_X
    * tBodyGyroJerk_std_Y
    * tBodyGyroJerk_std_Z
    * tBodyAccMag_std
    * tGravityAccMag_std
    * tBodyAccJerkMag_std
    * tBodyGyroMag_std
    * tBodyGyroJerkMag_std
    * fBodyAcc_std_X
    * fBodyAcc_std_Y
    * fBodyAcc_std_Z
    * fBodyAccJerk_std_X
    * fBodyAccJerk_std_Y
    * fBodyAccJerk_std_Z
    * fBodyGyro_std_X
    * fBodyGyro_std_Y
    * fBodyGyro_std_Z
    * fBodyAccMag_std
    * fBodyBodyAccJerkMag_std
    * fBodyBodyGyroMag_std
    * fBodyBodyGyroJerkMag_std

