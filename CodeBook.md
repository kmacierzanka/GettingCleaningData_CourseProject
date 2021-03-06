# Code book for Week 4 Course Project

This code book describes each variable in the `step5data.txt` file which is created into the working directory by `run_analysis.R`.

## Introduction

There are 180 observations and 88 variables in `step5data`. The names of variables 3-88 were created using the `paste()` function (as described in the `README.md` file). Their names follow the general format of "mean of ..." where the "..." corresponds to the original variable names in the zipped files. The descriptions below are based on the original zipped file `features_info.txt`.  

Each observation is `step5data` is mean of observations for each activity and each subject. The description of this calculation is provided in `README.md`.  

The variable column number is followed by the variable name in quotiation `""` marks.  

### Variables and Descriptions

[1] "activityname" - the name of physical activity during which smartphone was active (one of "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" or LAYING")  
[2] "id" - subject id (1-30)  

The following 86 variables are means of variables concerning 3-axial linear acceleration and 3-axial angular velocity (and their derivative jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ), as well as the magnitude of these three-dimensional signals (which was calculated using the Euclidean norm) (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  

('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)  

[3] "mean of tBodyAcc-mean()-X"  
[4] "mean of tBodyAcc-mean()-Y"  
[5] "mean of tBodyAcc-mean()-Z"  
[6] "mean of tBodyAcc-std()-X"  
[7] "mean of tBodyAcc-std()-Y"  
[8] "mean of tBodyAcc-std()-Z"  
[9] "mean of tGravityAcc-mean()-X"  
[10] "mean of tGravityAcc-mean()-Y"  
[11] "mean of tGravityAcc-mean()-Z"  
[12] "mean of tGravityAcc-std()-X"  
[13] "mean of tGravityAcc-std()-Y"  
[14] "mean of tGravityAcc-std()-Z"  
[15] "mean of tBodyAccJerk-mean()-X"  
[16] "mean of tBodyAccJerk-mean()-Y"  
[17] "mean of tBodyAccJerk-mean()-Z"  
[18] "mean of tBodyAccJerk-std()-X"  
[19] "mean of tBodyAccJerk-std()-Y"  
[20] "mean of tBodyAccJerk-std()-Z"  
[21] "mean of tBodyGyro-mean()-X"  
[22] "mean of tBodyGyro-mean()-Y"  
[23] "mean of tBodyGyro-mean()-Z"  
[24] "mean of tBodyGyro-std()-X"  
[25] "mean of tBodyGyro-std()-Y"  
[26] "mean of tBodyGyro-std()-Z"  
[27] "mean of tBodyGyroJerk-mean()-X"  
[28] "mean of tBodyGyroJerk-mean()-Y"  
[29] "mean of tBodyGyroJerk-mean()-Z"  
[30] "mean of tBodyGyroJerk-std()-X"  
[31] "mean of tBodyGyroJerk-std()-Y"  
[32] "mean of tBodyGyroJerk-std()-Z"  
[33] "mean of tBodyAccMag-mean()"  
[34] "mean of tBodyAccMag-std()"  
[35] "mean of tGravityAccMag-mean()"  
[36] "mean of tGravityAccMag-std()"  
[37] "mean of tBodyAccJerkMag-mean()"  
[38] "mean of tBodyAccJerkMag-std()"  
[39] "mean of tBodyGyroMag-mean()"  
[40] "mean of tBodyGyroMag-std()"  
[41] "mean of tBodyGyroJerkMag-mean()"  
[42] "mean of tBodyGyroJerkMag-std()"  
[43] "mean of fBodyAcc-mean()-X"  
[44] "mean of fBodyAcc-mean()-Y"  
[45] "mean of fBodyAcc-mean()-Z"  
[46] "mean of fBodyAcc-std()-X"  
[47] "mean of fBodyAcc-std()-Y"  
[48] "mean of fBodyAcc-std()-Z"  
[49] "mean of fBodyAcc-meanFreq()-X"  
[50] "mean of fBodyAcc-meanFreq()-Y"  
[51] "mean of fBodyAcc-meanFreq()-Z"  
[52] "mean of fBodyAccJerk-mean()-X"  
[53] "mean of fBodyAccJerk-mean()-Y"  
[54] "mean of fBodyAccJerk-mean()-Z"  
[55] "mean of fBodyAccJerk-std()-X"  
[56] "mean of fBodyAccJerk-std()-Y"  
[57] "mean of fBodyAccJerk-std()-Z"  
[58] "mean of fBodyAccJerk-meanFreq()-X"  
[59] "mean of fBodyAccJerk-meanFreq()-Y"  
[60] "mean of fBodyAccJerk-meanFreq()-Z"  
[61] "mean of fBodyGyro-mean()-X"  
[62] "mean of fBodyGyro-mean()-Y"  
[63] "mean of fBodyGyro-mean()-Z"  
[64] "mean of fBodyGyro-std()-X"  
[65] "mean of fBodyGyro-std()-Y"  
[66] "mean of fBodyGyro-std()-Z"  
[67] "mean of fBodyGyro-meanFreq()-X"  
[68] "mean of fBodyGyro-meanFreq()-Y"  
[69] "mean of fBodyGyro-meanFreq()-Z"  
[70] "mean of fBodyAccMag-mean()"  
[71] "mean of fBodyAccMag-std()"  
[72] "mean of fBodyAccMag-meanFreq()"  
[73] "mean of fBodyBodyAccJerkMag-mean()"  
[74] "mean of fBodyBodyAccJerkMag-std()"  
[75] "mean of fBodyBodyAccJerkMag-meanFreq()"  
[76] "mean of fBodyBodyGyroMag-mean()"  
[77] "mean of fBodyBodyGyroMag-std()"  
[78] "mean of fBodyBodyGyroMag-meanFreq()"  
[79] "mean of fBodyBodyGyroJerkMag-mean()"  
[80] "mean of fBodyBodyGyroJerkMag-std()"  
[81] "mean of fBodyBodyGyroJerkMag-meanFreq()"  
[82] "mean of angle(tBodyAccMean,gravity)"  
[83] "mean of angle(tBodyAccJerkMean),gravityMean)"  
[84] "mean of angle(tBodyGyroMean,gravityMean)"  
[85] "mean of angle(tBodyGyroJerkMean,gravityMean)"  
[86] "mean of angle(X,gravityMean)"  
[87] "mean of angle(Y,gravityMean)"  
[88] "mean of angle(Z,gravityMean)"   