# import libraries
library(data.table)
library(dplyr)

# read in data from individual text files
train_sub <- data.table(read.table('UCI HAR Dataset/train/subject_train.txt', header=FALSE))
train <- data.table(read.table('UCI HAR Dataset/train/X_train.txt', header=FALSE))
train_lab <- data.table(read.table('UCI HAR Dataset/train/y_train.txt', header=FALSE))

test_sub <- data.table(read.table('UCI HAR Dataset/test/subject_test.txt', header=FALSE))
test <- data.table(read.table('UCI HAR Dataset/test/X_test.txt', header=FALSE))
test_lab <- data.table(read.table('UCI HAR Dataset/test/y_test.txt', header=FALSE))

features <- data.table(read.table('UCI HAR Dataset/features.txt', header=FALSE))

# combine training and testing sets, 
# first combining subject, measurements data, and labels data together
all <- rbind(cbind(train_sub, train_lab, train), 
             cbind(test_sub, test_lab, test))

# set column names using descriptive features data
setnames(all, c("Subject", "Activity_Label", as.vector(features$V2)))

# subset data frame for only columns containing "mean" and "std" substrings (and Subject and Activity)
all_subset <- subset(all, select=
                             grepl("Subject", colnames(all)) | 
                             grepl("Activity_Label", colnames(all)) | 
                             grepl("mean()", colnames(all), fixed=TRUE) | 
                             grepl("std()", colnames(all), fixed=TRUE)
                     )

# rename activity labels so that they are descriptive
all_subset$Activity_Label[all_subset$Activity_Label==1] <- "WALKING"
all_subset$Activity_Label[all_subset$Activity_Label==2] <- "WALKING_UPSTAIRS"
all_subset$Activity_Label[all_subset$Activity_Label==3] <- "WALKING_DOWNSTAIRS"
all_subset$Activity_Label[all_subset$Activity_Label==4] <- "SITTING"
all_subset$Activity_Label[all_subset$Activity_Label==5] <- "STANDING"
all_subset$Activity_Label[all_subset$Activity_Label==6] <- "LAYING"

# create a second tidy data set with the average of each variable 
# (for each activity and each subject)
tidy_df <- all_subset %>%
        arrange(Subject, Activity_Label) %>%
        group_by(Subject, Activity_Label) %>%
        summarise_each(funs(mean))

# write tidy data set to .txt file
write.table(tidy_df, 'tidy_df.txt', row.name=FALSE)

