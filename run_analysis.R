# I have already downloaded the files to a local directory in my working directory to a directory called UCI. 
#I have set the working directory to this UCI directory. 
# All files are loaded from this UCI directory and its sub-directories.
# Assuming plyr library has been loaded already. 

# Reading Feature List and Label List 
activityLabels <- read.table("activity_labels.txt")
featureList <- read.table("features.txt")

#Reading Test DataSet
testData <- read.table("./test/X_test.txt")
testLabelID <- read.table("./test/Y_test.txt")
testSubjectID <- read.table("./test/subject_test.txt")

#Reading Training DataSet
trainData <- read.table("./train/X_train.txt")
trainLabelID <- read.table("./train/Y_train.txt")
trainSubjectID <- read.table("./train/subject_train.txt")

#0. Setting column names
names(testData) <- featureList$V2
names(trainData) <- featureList$V2
names(testLabelID) <- c("activity")
names(trainLabelID) <- c("activity")
names(testSubjectID) <- c("subject")
names(trainSubjectID) <- c("subject")

# 1. Merge Test and training data 
completeDataSet <- rbind(testData,trainData)
completeLabelID <- rbind(testLabelID,trainLabelID)
completeSubjectID <- rbind(testSubjectID,trainSubjectID)

completeDS <- cbind(completeLabelID,completeSubjectID)

# 2. Extracting mean and standard deviation
meanstdList <- grep("mean|std", names(completeDataSet))
for (each in meanstdList){
      completeDS <- cbind(completeDS, completeDataSet[each])
}

# 3. Setting descriptive activity names to activities in the data set. 
completeDS$activity <- mapvalues(completeDS$activity, from = levels(factor(completeDS$activity)), to = levels(activityLabels$V2))

#4. Setting descriptive variable names to the dataset
# Already done in Step 0. 

#5. Creating an independent tidy data set with the average of each variable for each activity and subject 
dsTidy <- aggregate(completeDS,list(completeDS$subject,completeDS$activity),mean)
dsTidy$subject <- NULL; dsTidy$activity <- NULL
names(dsTidy)[1] <- "subject"
names(dsTidy)[2] <- "activity"

#Writing to a file
write.table(file = "data.txt", x = dsTidy, row.names = FALSE)

