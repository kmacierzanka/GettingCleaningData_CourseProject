# Getting and Cleaning Data
## Week 4 Course Project

In this project I had to read text files about test and train subjects who wore a smartphone on their waist. There were 30 volunteers in total who performed 6 possible activities. There was a total of 10299 observations.

The `run_analysis.R` script creates two tidy data sets (from steps 4 and 5 in the course project instructions) as described below.

(Tibbles (from the `dplyr` package) are used whenever possible, as they are more powerful and versatile than dataframes.)

### Import zipped file
A zipped file is first downloaded to the working directory. It is a dataset with many readings recorded by the smartphone.

### Create test and train tibbles
First, the script creates test data called `xtest` and adds the subject `id` variable and the `activityname` variable as the first two columns.  

This process is repeated for the train data, creating an object `xtrain`.

### Merge test and train data
The two data need are merged. This is done using rbind() as they are simply two collections of the same subject group. The script creates this as an object `xcomplete`.

### Set descriptive activity names
Up until now, the `activityname` variable features numerical observations (1-6). These specific integers correspond to a given activity. The script labels the `activityname` observations with the labels provided in the original zipped file. 