CodeBook
========================================================

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **Help** toolbar button for more details on using R Markdown).

When you click the **Knit HTML** button a web page will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

CodeBook

Original data:
source : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
description : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Following data transformations are carried out by the run_analysis.R script.

For each of the training and test datasets,
1. read the subject data file
2. read the X data file
3. read the y data file
4. read the activity labels
5. read the features
6. Using descriptive activity names to name the activities:
   a. For testing data
   b. For training data
7. Creating full data set
8. Assigning the column names from features.txt
9. Row binding the activity of testing and training data
10. Row binding the subject id of testing and training data
11. Full data binding with activity and subject id.
12. Assigning the name of the last two columns of the data
13. Subsetting the full Data to obtain only the measurements on the mean and standard deviation for each measurement:
    a. Fetching the column names   
    b. Fetching the position of column
14. Subsetting the data only with column name contains mean or std.	
15. Obtaining the average of each variable for each subject and each activity.
16. Exporting data into a .txt or .csv file.
17. Done :)

Variable Descriptions

The data for this data set was derived from sources mentioned in the "Original data" section of this document. 
Part of the description below has been taken from the original data description.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:

mean: Mean value
std: Standard deviation

Data Columns
Subject: ID indicating the subject from whom data was collected
Activity: Activity being performed
tBodyAcc-mean()-X	
tBodyAcc-mean()-Y	
tBodyAcc-mean()-Z	
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z	
tBodyGyro-mean()-X	
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	
tBodyGyroJerk-mean()-X	
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z	
tBodyAccMag-mean()	
tGravityAccMag-mean()	
tBodyAccJerkMag-mean()	
tBodyGyroMag-mean()	
tBodyGyroJerkMag-mean()	
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	
fBodyAccMag-mean()	
fBodyBodyAccJerkMag-mean()	
fBodyBodyGyroMag-mean()	
fBodyBodyGyroJerkMag-mean()	
tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z	
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-std()	
tGravityAccMag-std()	
tBodyAccJerkMag-std()	
tBodyGyroMag-std()	
tBodyGyroJerkMag-std()	
fBodyAcc-std()-X	
fBodyAcc-std()-Y	
fBodyAcc-std()-Z	
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	
fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	
fBodyAccMag-std()	
fBodyBodyAccJerkMag-std()	
fBodyBodyGyroMag-std()	
fBodyBodyGyroJerkMag-std()

