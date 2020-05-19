# Script for creating two tidy data sets (from steps 4 and 5 in the course
# project instructions)

# download zipped file to working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "./zippedfolder.zip", method = "curl")

# create test data:
# create xtest object
xtest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/X_test.txt"))
xtest <- as_tibble(xtest)

# create subjecttest object
subjecttest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/subject_test.txt"))

# create ytest object
ytest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/y_test.txt"))

# add subjecttest as an 'id' variable to xtest
xtest <- mutate(xtest, id = subjecttest$V1) %>% select(id, V1:V561)

# add ytest as an 'activityname' variable to xtest
xtest <- mutate(xtest, activityname = ytest$V1) %>% select(id, activityname, V1:V561)

# create train data
# create xtrain object
xtrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/X_train.txt"))
xtrain <- as_tibble(xtrain)

# create subjecttrain object
subjecttrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/subject_train.txt"))

# create ytrain object
ytrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/y_train.txt"))

# add subjecttrain as an 'id' variable to xtrain
xtrain <- mutate(xtrain, id = subjecttrain$V1) %>% select(id, V1:V561)

# add ytrain as an 'activityname' variable to xtrain
xtrain <- mutate(xtrain, activityname = ytrain$V1) %>% select(id, activityname, V1:V561)

# create complete dataset
xcomplete <- as_tibble(rbind(xtrain, xtest))

# add correct variable names to xcomplete. The variable names are found in the
# features.txt file
varnames <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/features.txt"))
# we only need the second column of this dataframe and we need it as a
# character vector
varnames <- as.character(varnames[,2])
# now we can set the variable names of xcomplete
names(xcomplete) <- c("id", "activityname", varnames)

# name the activityname observations with the correct activity labels
# create activity object
activity <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/activity_labels.txt"))
xcomplete$activityname <- as.factor(xcomplete$activityname)
# we need the second column of activity as a character vector for the new level names
actnames <- as.character(activity[,2])
# now we can set the new levels
levels(xcomplete$activityname) <- actnames

# extract only the variables concerned with means or standard deviations to
# create the data required at step 4
meanstdcols <- as.integer(grep("([Mm]ean|[Ss]td)", names(xcomplete)))
step4data <- as_tibble(xcomplete[, c(1, 2, meanstdcols)])

# creates a tidy data set with the average of each variable for each activity
# and each subject
step5data <- step4data



