## Introduction to Project
This README file contains information about the project work from the Coursera Course "Getting and Cleaning Data". 

The purpose of this project is to demonstrate students' ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.  A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

In this project, I assume that readers of this file have familiarized themselves with the project scope and description. Complete information about the data is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The information from the data set is not duplicated in this README. Users are strongly recommended to read the README.txt and features_info.txt available in the above data set. 

In this project, student is expected to demonstrate the following - creating an R script called run_analysis.R that does the following. 

## Steps (Refer to R script file)
* Merges the training and the test sets to create one data set.
  * This step is straightforward, since the files (in test and train)are well organized. The code in the R-Script is self-explanatory. In this step, I have also included appropriate column headers for activity, subject and the 561 features,the names of which were obtained from features.txt file. 
* Extracts only the measurements on the mean and standard deviation for each measurement. 
  * The code in the R Script is self-explanatory. 
* Uses descriptive activity names to name the activities in the data set.
  * The code in the R Script is self-explanatory. 
* Appropriately labels the data set with descriptive variable names. 
  * The code in the R Script is self-explanatory. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * The code in the R Script is self-explanatory. 

Description about the contents of the raw data and the tidy data is in the Code Book.md