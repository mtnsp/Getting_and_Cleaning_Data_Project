
## create a folder to store downloaded zip data
if(!file.exists("./data")) dir.create("./data")


## Download the zip file and unzip it
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url = file_url, destfile = "./data/data.zip", mode = "wb")
unzip("./data/data.zip") 
## By the above unzip script, a folder named "UCI HAR Dataset" is generated in
## the current working direcoty, containing unzipped data.



##### Step 1 begins here #####

## Get the training data set 
train.X <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.sub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train.y <- read.table("./UCI HAR Dataset/train/y_train.txt")

train <- cbind(train.sub, train.y, train.X)


## Get the test data set 
test.X <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.sub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test.y <- read.table("./UCI HAR Dataset/test/y_test.txt")

test <- cbind(test.sub, test.y, test.X)


## Merge the training and test data sets
dataset <- rbind(train, test)

##### Step 1 ends here #####



##### Step 2 begins here #####

## Get the column indices for the mean and standard deviation measurements
features <- read.table("./UCI HAR Dataset/features.txt")
col_idx <- sort(c(grep("-mean\\(\\)", features[[2]], ignore.case = T),
                  grep("-std\\(\\)", features[[2]], ignore.case = T)))

## Extract only the mean and standard deviation measurements
extracts <- dataset[, c(1:2, col_idx + 2)]

##### Step 2 ends here #####



##### Step 3 begins here #####

## Use descriptive activity names to name the activities
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
library(dplyr)
ds_s3 <- mutate(extracts, activity = activities[extracts[[2]],2])

ds_s3_d <- ds_s3[,-2] # drop y

##### Step 3 ends here #####



##### Step 4 begins here #####

## Get the feature names
feat_nm <- as.character(features[col_idx,2])
library(stringr)
fnm <- str_replace_all(feat_nm,"\\(\\)", "") # remove "()"
fnm1 <- str_replace_all(fnm,"-", "_") # replace "-" with "_"

## Label the data set with descriptive variable names
names(ds_s3_d) <- c("subject", fnm1, "activity")

##### Step 4 ends here #####



##### Step 5 begins here #####
  
## Create a second, independent tidy data set with the average of each variable 
## for each activity and each subject.
library(reshape2)
ds_melt <- melt(ds_s3_d, id = c("subject", "activity"))
tidy_ds <- dcast(ds_melt, subject + activity ~ variable, mean)

## Label variable names
mfnm <- paste("mean", fnm1, sep="_")
names(tidy_ds) <- c("subject", "activity", mfnm)

##### Step 5 ends here #####



## Write the table into a file
write.table(tidy_ds, "tidy_ds.txt", row.names = F)

