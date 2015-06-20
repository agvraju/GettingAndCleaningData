# Getting And Cleaning Data
##Course Project
  1.  Merges the training and the test sets to create one data set.
  2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
  3.  Uses descriptive activity names to name the activities in the data set
  4.  Appropriately labels the data set with descriptive variable names. 
  5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each 
      activity and each subject.

The code accomplishing the course project is included in run_analysis.R file. The R file should be located in the same 
location as the Data folder(UCI HAR Dataset)
# Steps:
1. Download the dataset and unzip the files
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
3. The script requires the following libraries:
    data.table,
    dplyr,
    plyr
4. The script loads the Test data combining with the Subjects and Activities using cbind.
5. The script loads the Train data combining with the Subjects and Activities using cbind.
6. Test and Train data is combined using rbind.
7. The required columns are selected using 'select_vars' and loaded into completeData_mean_sd
8. The column names are modified to be more descriptive
9. The average of each variable for each activity and each subject is calculated using ddply.
10. The average data is finally written to a file called UCIHAR_Average_TidyData.txt using write.table
