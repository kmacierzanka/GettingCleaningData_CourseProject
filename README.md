# Week 4 Course Project
## From "Getting and Cleaning Data"

In this project I had to read text files about test and train subjects who wore a smartphone on their waist. There were 30 volunteers in total who performed 6 possible activities. There was a total of 10299 observations.

The `run_analysis.R` script creates two tidy data sets (from steps 4 and 5 in the course project instructions) as described below.

(Tibbles (from the `dplyr` package) are used whenever possible, as they are more powerful and versatile than dataframes.)

### Import zipped file
A zipped file is first downloaded to the working directory. It is a dataset with many readings recorded by the smartphone.

### Create test and train tibbles
First, the script creates test data called `xtest` and adds the subject `id` variable and the `activityname` variable as the first two columns.  

This process is repeated for the train data, creating an object `xtrain`.

### Merge test and train data
The two data are merged. This is done using rbind() as they are simply two collections of the same subject group. The script creates this as an object `xcomplete`.

### And variable names
The 563 variable names are added to `xcomplete`. The first two are `id` and `activityname`, and the remaining 561 can be found in the features.txt file in the original zipped file.  


### Set descriptive activity names
Up until now, the `activityname` variable in `xcomplete` features numerical observations (1-6). These specific integers correspond to a given activity. The script labels the `activityname` observations with the labels provided in the original zipped file.

### Extract measurements on the mean and standard deviation
Only variables concerning mean (`"[Mm]ean"`) or standard deviation (`"[Ss]td"`) observations are extracted from `xcomplete` to create `step4data`. There are 86 such variables. The `id` and `activityname` variables are also found in `step4data`, yielding data with 88 variables.  

`step4data`, as the name implies, is the tibble corresponding to step 4 in the course project instructions.

### Create tidy data set with the average of each variable for each activity and each subject
`step4data` is grouped by (using `group_by()`) the `activityname` and `id`. It is then summarised using `summarise_all()` to find the mean of each variable. This is loaded into a new object called `step5data`. As expected, this data has 180 observations (since there are 6 categories for `activityname` and 30 categories for `id`), and 88 variables (as this have not changed from `step4data`.  

The variable names for `step5data` for all variables (except `activityname` and `id`) are changed to reflect the summary function to which they were passed. This is achieved using the `paste()` function.

### Writing .txt file
Finally, `step5data` is converted into a .txt file ready for upload.