library(dplyr)

###########
#1. Reading and merging the train set and the test set
###########

##Reading individual files

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "ActivityLabel")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "ActivityLabel")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

##Creating one table for train and one table for test
train <- data.frame(x_train, y_train, subject_train)
test <- data.frame(x_test, y_test, subject_test)


#Merging train set and test set
dataset <- merge(train, test, all = TRUE)

###########
#2. Extracting only the measurements on the mean and standard desiation
###########

##Finding features with "mean" or "std"
features <- read.table("./UCI HAR Dataset/features.txt")
mean_std_column_filter <- grep(c("mean|std"), features$V2)
column_filter <- c(mean_std_column_filter, 562:563) 

##Filtering the columns
dataset_extract <- dataset[,column_filter]



###########
#3. Using activity names to name actvity in dataset
###########

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("Index", "Label"))
dataset_extract <- merge(dataset_extract, activity_labels, by.x = "ActivityLabel", by.y = "Index", all.x = TRUE)
dataset_extract <- dataset_extract[,-1]


###########
#4. Labeling dataset variables
###########

features_names <-  grep(c("mean|std"), features$V2, value = TRUE)
colnames <- c(features_names, "Subject", "ActivityLabel")
colnames(dataset_extract) <- colnames

###########
#5. Creating a second dataset with averages
###########

dataset_means <- tbl_df(dataset_extract)

dataset_means %>%
  group_by(Subject, ActivityLabel) %>%
  summarize_all(mean) %>%
  print() %>%
  write.table(file = "tidydataset.txt")





