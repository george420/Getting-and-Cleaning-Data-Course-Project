# Merges the training and the test sets to create one data set.
subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/x_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/x_test.txt")
y_test <- read.table("./test/y_test.txt")

subject <- rbind(subject_train, subject_test)
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)

# Rename the data set.
features <- read.table("features.txt")
features_names <- make.names(as.character(features$V2), unique = T)
dataset <- cbind(subject, y, x)
names(dataset) <- c("Subject", "Activity", features_names)

# Extracts only the measurements on the mean and standard deviation for each measurement.
library(dplyr)
dataset_new <- select(dataset,  matches("Subject|Activity|mean|std"))

# Uses descriptive activity names to name the activities in the data set.
activity <- read.table("activity_labels.txt")
dataset_new$Activity <- activity[dataset_new$Activity, 2]

# Appropriately labels the data set with descriptive variable names.
dataset_new$Activity <- as.character(dataset_new$Activity)
dataset_new$Activity[dataset_new$Activity == "WALKING"] <- "Walking"
dataset_new$Activity[dataset_new$Activity == "WALKING_UPSTAIRS"] <- "Walking up"
dataset_new$Activity[dataset_new$Activity == "WALKING_DOWNSTAIRS"] <- "Walking down"
dataset_new$Activity[dataset_new$Activity == "SITTING"] <- "Sitting"
dataset_new$Activity[dataset_new$Activity == "STANDING"] <- "Standing"
dataset_new$Activity[dataset_new$Activity == "LAYING"] <- "Laying"
dataset_new$Activity <- as.factor(dataset_new$Activity)

# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
dataset_final <- summarize_each(group_by(dataset_new, Subject, Activity), funs(mean))
write.table(dataset_final, file = "dataset_final.txt", row.names = F)
