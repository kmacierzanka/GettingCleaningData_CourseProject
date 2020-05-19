# download zipped file to working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "./zippedfolder.zip", method = "curl")

# create test dataset:
# create xtest object
xtest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/X_test.txt"))

# create subjecttest object
subjecttest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/subject_test.txt"))

# create ytest object
ytest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/y_test.txt"))

# create train dataset
# create xtrain object
xtrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/X_train.txt"))

# create subjecttrain object
subjecttrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/subject_train.txt"))

# create ytrain object
ytrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/y_train.txt"))

#
# create activitylabels object
activity <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/activity_labels.txt"))

