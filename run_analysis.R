# download zipped file to working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "./zippedfolder.zip", method = "curl")

# create test dataset:
# create xtest object
xtest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/X_test.txt"))
xtest <- as_tibble(xtest)

# create subjecttest object
subjecttest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/subject_test.txt"))

# create ytest object
ytest <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/test/y_test.txt"))

# add subjecttest as an 'id' to xtest
xtest <- mutate(xtest, id = subjecttest$V1) %>% select(id, V1:V561)

# create train dataset
# create xtrain object
xtrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/X_train.txt"))
xtrain <- as_tibble(xtrain)

# create subjecttrain object
subjecttrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/subject_train.txt"))

# create ytrain object
ytrain <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/train/y_train.txt"))

# add subjecttrain as an 'id' to xtrain
xtrain <- mutate(xtrain, id = subjecttrain$V1) %>% select(id, V1:V561)

# create complete dataset
xcomplete <- as_tibble(rbind(xtrain, xtest))

# add correct variable names to xcomplete. The variable names are found in the
# features.txt file
varnames <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/features.txt"))
# we only need the second column of this dataframe and we need it as a
# character vector
varnames <- as.character(varnames[,2])
# now we can set the names of xcomplete
names(xcomplete) <- c("id", varnames)



#
# create activitylabels object
activity <- read.table(unz("./zippedfolder.zip", "UCI HAR Dataset/activity_labels.txt"))

