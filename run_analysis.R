# Returns one data set by reading and merging all component files.
# Data set comprises of the X values, Y values and Subject IDs.
#
# This also subsets the data to extract only the measurements on the 
# mean and standard deviation for each measurement.
# The required columns in the subset is determined by selecting only those columns 
# that have either "mean()" or "std()" in their names.
# Subsetting is done early on to help reduce memory requirements.

#Reading Data into R:
# read the subject data file
subjtst <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
subjtrn<- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")

# read the X data file
Xtst<- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
Xtrn<- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")

# read the y data file
Ytst<- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
Ytrn<- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")

# read the activity labels
act<- read.table(".\\UCI HAR Dataset\\activity_labels.txt")

# read the features
feats <- read.table(".\\UCI HAR Dataset\\features.txt")  

# Using descriptive activity names to name the activities:
# For testing data
Ytst$V1[which(Ytst$V1==1)]<- "WALKING"
Ytst$V1[which(Ytst$V1==2)]<- "WALKING_UPSTAIRS"
Ytst$V1[which(Ytst$V1==3)]<- "WALKING_DOWNSTAIRS"
Ytst$V1[which(Ytst$V1==4)]<- " SITTING"
Ytst$V1[which(Ytst$V1==5)]<- "STANDING"
Ytst$V1[which(Ytst$V1==6)]<- "LAYING"

# For training data
Ytrn$V1[which(Ytrn$V1==1)]<- "WALKING"
Ytrn$V1[which(Ytrn$V1==2)]<- "WALKING_UPSTAIRS"
Ytrn$V1[which(Ytrn$V1==3)]<- "WALKING_DOWNSTAIRS"
Ytrn$V1[which(Ytrn$V1==4)]<- " SITTING"
Ytrn$V1[which(Ytrn$V1==5)]<- "STANDING"
Ytrn$V1[which(Ytrn$V1==6)]<- "LAYING"


# Creating full data set
Xdata<- rbind(Xtst, Xtrn)

# Assigning the column names from features.txt
names(Xdata)<- feats$V2

# Row binding the activity of testing and training data
Activity<- rbind(Ytst, Ytrn)

# Row binding the subject id of testing and training data
Subject<- rbind(subjtst, subjtrn)

# Full data binding with activity and subject id.
Data<- cbind(Xdata, Activity, Subject)

# Assigning the name of the last two columns of the data
names(Data)[562]<- paste("Activity")
names(Data)[563]<- paste("Subject")

# Subsetting the full Data to obtain only the measurements on the 
# mean and standard deviation for each measurement:
# Fetching the column names
meancols <- grep("*.[Mm]ean\\(\\)", colnames(Data), value=TRUE)
stdcols <- grep("*.[Ss]td\\(\\)", colnames(Data), value=TRUE)

# Fetching the position of column
meanColNum<- grep("*.[Mm]ean\\(\\)", colnames(Data))
stdColNum<- grep("*.[Ss]td\\(\\)", colnames(Data))

# Subsetting the data only with column name contains
# mean or std.
subData<- Data[, c(meanColNum, stdColNum, 562, 563)]

# Obtaining the average of each variable for each subject and each activity:
library(data.table)
dt<- data.table(subData)
meanData<- dt[, lapply(.SD, mean), by=c("Subject", "Activity")]
meanData<- meanData[order(meanData$Subject),]

# Exporting data into a .txt or .csv file:
write.table(meanData, "tidyData.txt", sep="\t")
write.csv(meanData, "tidyData.csv")

print("Done.")