## Study Design 
Thir project derives from the Human Activity Recognition Using Smartphones Dataset (Version 1.0), work done by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto, at the Smartlab - Non Linear Complex Systems Laboratory, DITEN - Universit? degli Studi di Genova, Via Opera Pia 11A, I-16145, Genoa, Italy. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for the project is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Raw Data 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The raw dataset includes the following files:

* 'README.txt'
*'features_info.txt': Shows information about the variables used on the feature vector.
*'features.txt': List of all features.
*'activity_labels.txt': Links the class labels with their activity name.
*'train/X_train.txt': Training set.
*'train/y_train.txt': Training labels.
*'test/X_test.txt': Test set.
*'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
*'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

## Activity Labels 

The activity labels used in this study are as follows

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

### Notes 
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

## Tidy Data Generation
Tidy data was created for the purpose of this project work. As indicated in the project description, using R code, the two data sets (training and test) were merged. The merged table also includes the activity and subhect column. The y_test.txt and y_train.txt contain the activity done by the subjects, captured in the subject_test.txt and subject_train.txt file. The X_text.txt and X-tain.txt file contains information about 561 features. These features are tabulated in the features.txt file. 

In the next step, measurements on just the mean and standard deviation for each of the measurement was obtained. 

The numeric labels for activities (mentioned above) are decribed with their corresponding more descriptive activity names. 

The merged table has column headers included. The column headers are extracted from the features.txt file. 

## Data Dictionary 
For the merged data, 
* Subject ID indicated by numeric ID from 1 to 30
* Activity label as shown above. 
* 561 features described in FeaturesInfo.txt

The tidy set,average of each of the above mentioned 561 features for each activity and each subject ID. 