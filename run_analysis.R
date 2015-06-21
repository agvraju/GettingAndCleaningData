# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### 1.Merges the training and the test sets to create one data set.

  #Load Required Libraries
  library("data.table")
  library("dplyr")
  library("plyr")
  
  #Load Test Data
  testData <- read.table("./test/X_test.txt")
  testDataColsnames <- read.table("./features.txt")
  names(testData) <- testDataColsnames[,2]
  
  #Load Acitivity Labels
  activity_labels <- read.table("./activity_labels.txt")
  
  #Load y_test
  y_test <- read.table("./test/y_test.txt")

### 3.Uses descriptive activity names to name the activities in the data set
  y_test[,2] <- activity_labels[y_test[,1],2]
  names(y_test) <- c("ACTIVITY_ID", "ACTIVITY")
  
  #Load Test Subject
  subject_test <- read.table("./test/subject_test.txt")
  names(subject_test) <- "SUBJECT_ID"
  
  #Complete Test Data
  complete_test_data <- cbind(subject_test, y_test, testData)
  
  #Load Training Data
  trainData <- read.table("./train/X_train.txt")
  names(trainData) <- testDataColsnames[,2]
  
  #Load y_train
  y_train <- read.table("./train/y_train.txt")
  y_train[,2] <- activity_labels[y_train[,1],2]
  names(y_train) <- c("ACTIVITY_ID", "ACTIVITY")
  
  #Load Train Subject
  subject_train <- read.table("./train/subject_train.txt")
  names(subject_train) <- "SUBJECT_ID"
  
  #Complete Train Data
  complete_train_data <- cbind(subject_train, y_train, trainData)
  
  
  #Combine Data
  completeData <- rbind(complete_test_data,complete_train_data)


### 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
  #Extract Mean and Standard Deviation columns along with Subject and Activity columns
  mean_sd_colNames <- select_vars(names(completeData),contains("subject_id"), contains("activity"), contains("mean()"), contains("std"))
  completeData_mean_sd <- completeData[,mean_sd_colNames]


# 4.Appropriately labels the data set with descriptive variable names. 
  names(completeData_mean_sd) <- gsub('^t',"Average.Time.",names(completeData_mean_sd))
  names(completeData_mean_sd) <- gsub('^f',"Average.Frequency.",names(completeData_mean_sd))
  
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  average_data <- ddply(completeData_mean_sd, c("SUBJECT_ID","ACTIVITY"), numcolwise(mean))
  write.table(average_data, file = "UCIHAR_Average_TidyData.txt", row.name=FALSE)


