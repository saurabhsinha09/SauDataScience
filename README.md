SauDataScience
==============

Repository for Data Science course by Hopkins.

Download the data set and extract. It should create a UCI HAR Dataset folder that has all the files.
Change current directory to one above the UCI HAR Dataset folder. 
Place your Rscript run_analysis.R into this path.
The tidy dataset should get created in the current directory as tidyData.txt or tidyData.csv

Assumptions:
The training and test data are available in folders train and test respectively.
For each of these data sets:
Measurements are present in X_[train/test].txt file
Subject information is present in subject_[train/test].txt file
Activity codes are present in y_[train/test].txt file
All activity codes and their labels are present in a file named activity_labels.txt.
Names of all measurements taken are present in file features.txt.
All columns representing means contain *mean()* in them.
All columns representing standard deviations contain *std()* in them.
