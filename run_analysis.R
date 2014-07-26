run_analysis <- function() {
    # This is the Getting and Cleaning Data course project.
    
    # First read the two main data files
    setwd("C:/Users/Dave/Documents/Davework/datascience/R/auto-dl")
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    # Only download and unzip if needed
    if (!file.exists("./dataset.zip")) download.file(fileUrl, destfile = "./dataset.zip")
    if (!file.exists("./UCI HAR Dataset"))  unzip("./dataset.zip")

    train <- read.table("./UCI HAR Dataset/train/X_train.txt")
    test <- read.table("./UCI HAR Dataset/test/X_test.txt")

    # Step 1: Merge them into a single dataset
    merged <- rbind(train, test)
    
    # Read the header file and assign the column names
    features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
    labels <- features$V2
    colnames(merged) <- labels
    
    # Step 2: Extract (keep) only the measurements on the mean and standard deviation for each measurement 
    subsetMerge <- merged[,grepl("std|mean[(]", colnames(merged))]
    
    # Step 3: Use descriptive activity names
    # Read both train and test activity lists ("1-6"), then replace the numbers with the appropriate strings
    trainNumbers <- read.table("./UCI HAR Dataset/train/y_train.txt",
                               col.names="Activity", stringsAsFactors=FALSE)
    testNumbers <- read.table("./UCI HAR Dataset/test/y_test.txt", 
                              col.names="Activity", stringsAsFactors=FALSE)
    activityNum <- rbind(trainNumbers, testNumbers)

    # Subset the data based on 1-6 and replace with strings.  Use "sapply" instead??
    j <- sum(!is.na(activityNum))
    for (i in 1:j) {
        if (activityNum$Activity[i] == "1") activityNum$Activity[i] = "WALKING"
        if (activityNum$Activity[i] == "2") activityNum$Activity[i] = "WALKING_UPSTAIRS"
        if (activityNum$Activity[i] == "3") activityNum$Activity[i] = "WALKING_DOWNSTAIRS"
        if (activityNum$Activity[i] == "4") activityNum$Activity[i] = "SITTING"
        if (activityNum$Activity[i] == "5") activityNum$Activity[i] = "STANDING"
        if (activityNum$Activity[i] == "6") activityNum$Activity[i] = "LAYING"
    }
    # Merge the new column with the rest of the data
    mWithActivity <- cbind(subsetMerge, activityNum)
    
    # Step 4:  Appropriately label the data set with descriptive variable names
    names(mWithActivity) <- gsub("tBody", "Time Body ", names(mWithActivity))    
    names(mWithActivity) <- gsub("fBody", "Freq Body ", names(mWithActivity))
    names(mWithActivity) <- gsub("Acc", "Accel ", names(mWithActivity))
    names(mWithActivity) <- gsub("Gyro", "Gyro ", names(mWithActivity))
    names(mWithActivity) <- gsub("tGravity", "Time Gravity ", names(mWithActivity))   
    names(mWithActivity) <- gsub("Jerk", "Jerk ", names(mWithActivity))
    names(mWithActivity) <- gsub("Body Body", "Body ", names(mWithActivity))    
    names(mWithActivity) <- gsub("-std(.*)-X", "Std Dev X", names(mWithActivity))
    names(mWithActivity) <- gsub("-std(.*)-Y", "Std Dev Y", names(mWithActivity))
    names(mWithActivity) <- gsub("-std(.*)-Z", "Std Dev Z", names(mWithActivity))
    names(mWithActivity) <- gsub("-mean(.*)-X", "Mean X", names(mWithActivity))
    names(mWithActivity) <- gsub("-mean(.*)-Y", "Mean Y", names(mWithActivity))
    names(mWithActivity) <- gsub("-mean(.*)-Z", "Mean Z", names(mWithActivity))
    names(mWithActivity) <- gsub("Mag-mean(.*)", "Mag Mean", names(mWithActivity))
    names(mWithActivity) <- gsub("Mag-std(.*)", "Mag Std Dev", names(mWithActivity))
    
    # Step 5: Create a second, independent tidy data set
    # First read and combine the subject ID column from the train and test datasets.
    trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                               col.names="Subject", stringsAsFactors=FALSE)
    testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                              col.names="Subject", stringsAsFactors=FALSE)
    subjects <- rbind(trainSubject, testSubject)
    
    # Then combine into the main table.  (Could use melt and dcast instead of aggregate())
    mWithSubject <- cbind(mWithActivity, subjects)
    a = suppressWarnings(aggregate(mWithSubject, by = list(mWithSubject$Subject, mWithSubject$Activity), FUN = mean, na.rm=TRUE))
    
    # Do a little cleanup.  Get rid of leftover and redundant columns. Rename columns produced by aggregate().
    drops <- c("Activity","Subject")
    a <- a[,!names(a) %in% drops]
    names(a)[names(a)=="Group.1"] <- "Subject"
    names(a)[names(a)=="Group.2"] <- "Activity"
    
    # Write out the table to upload to complete the project.
    write.table(a, file="./cleaning_data_project.txt", row.names=FALSE)
}
