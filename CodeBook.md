#CodeBook DataCleanse project

This project manipulates data originally found here:
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: (including original codebooks)

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

this project has generated the following fields from the input files. For descriptions of the original fields see the original codebooks.

activyDescription	Description of the activity being performed when the measurement was taken

subjectID			the ID of the person taking the measurement

activityID			the id corespondng to the activityDescription

avg_tBodyAcc.mean...X		average of tBodyAcc.mean...X

avg_tBodyAcc.mean...Y		average of tBodyAcc.mean...Y

avg_tBodyAcc.mean...Z		average of tBodyAcc.mean...Z

avg_tBodyAcc.std...X		average of tBodyAcc.std...X

avg_tBodyAcc.std...Y		average of tBodyAcc.std...Y

avg_tBodyAcc.std...Z		average of tBodyAcc.std...Z

avg_tGravityAcc.mean...X	average of tGravityAcc.mean...X

avg_tGravityAcc.mean...Y	average of tGravityAcc.mean...Y

avg_tGravityAcc.mean...Z	average of tGravityAcc.mean...Z

avg_tGravityAcc.std...X		average of tGravityAcc.std...X

avg_tGravityAcc.std...Y		average of tGravityAcc.std...Y

avg_tGravityAcc.std...Z		average of tGravityAcc.std...Z

avg_tBodyAccJerk.mean...X	average of tBodyAccJerk.mean...X

avg_tBodyAccJerk.mean...Y	average of tBodyAccJerk.mean...Y

avg_tBodyAccJerk.mean...Z	average of tBodyAccJerk.mean...Z

avg_tBodyAccJerk.std...X	average of tBodyAccJerk.std...X

avg_tBodyAccJerk.std...Y	average of tBodyAccJerk.std...Y

avg_tBodyAccJerk.std...Z	average of tBodyAccJerk.std...Z

avg_tBodyGyro.mean...X		average of tBodyGyro.mean...X

avg_tBodyGyro.mean...Y		average of tBodyGyro.mean...Y

avg_tBodyGyro.mean...Z		average of tBodyGyro.mean...Z

avg_tBodyGyro.std...X		average of tBodyGyro.std...X

avg_tBodyGyro.std...Y		average of tBodyGyro.std...Y

avg_tBodyGyro.std...Z		average of tBodyGyro.std...Z

avg_tBodyGyroJerk.mean...X	average of tBodyGyroJerk.mean...X

avg_tBodyGyroJerk.mean...Y	average of tBodyGyroJerk.mean...Y

avg_tBodyGyroJerk.mean...Z	average of tBodyGyroJerk.mean...Z

avg_tBodyGyroJerk.std...X	average of tBodyGyroJerk.std...X

avg_tBodyGyroJerk.std...Y	average of tBodyGyroJerk.std...Y

avg_tBodyGyroJerk.std...Z	average of tBodyGyroJerk.std...Z

avg_tBodyAccMag.mean..		average of tBodyAccMag.mean..

avg_tBodyAccMag.std..		average of tBodyAccMag.std..

avg_tGravityAccMag.mean..	average of tGravityAccMag.mean..

avg_tGravityAccMag.std..	average of tGravityAccMag.std..

avg_tBodyAccJerkMag.mean..	average of tBodyAccJerkMag.mean..

avg_tBodyAccJerkMag.std..	average of tBodyAccJerkMag.std..

avg_tBodyGyroMag.mean..		average of tBodyGyroMag.mean..

avg_tBodyGyroMag.std..		average of tBodyGyroMag.std..

avg_tBodyGyroJerkMag.mean..	average of tBodyGyroJerkMag.mean..

avg_tBodyGyroJerkMag.std..	average of tBodyGyroJerkMag.std..

avg_fBodyAcc.mean...X		average of fBodyAcc.mean...X

avg_fBodyAcc.mean...Y		average of fBodyAcc.mean...Y

avg_fBodyAcc.mean...Z		average of fBodyAcc.mean...Z

avg_fBodyAcc.std...X		average of fBodyAcc.std...X

avg_fBodyAcc.std...Y		average of fBodyAcc.std...Y

avg_fBodyAcc.std...Z		average of fBodyAcc.std...Z

avg_fBodyAcc.meanFreq...X	average of fBodyAcc.meanFreq...X

avg_fBodyAcc.meanFreq...Y	average of fBodyAcc.meanFreq...Y

avg_fBodyAcc.meanFreq...Z	average of fBodyAcc.meanFreq...Z

avg_fBodyAccJerk.mean...X	average of fBodyAccJerk.mean...X

avg_fBodyAccJerk.mean...Y	average of fBodyAccJerk.mean...Y

avg_fBodyAccJerk.mean...Z	average of fBodyAccJerk.mean...Z

avg_fBodyAccJerk.std...X	average of fBodyAccJerk.std...X

avg_fBodyAccJerk.std...Y	average of fBodyAccJerk.std...Y

avg_fBodyAccJerk.std...Z	average of fBodyAccJerk.std...Z

avg_fBodyAccJerk.meanFreq...X	average of fBodyAccJerk.meanFreq...X

avg_fBodyAccJerk.meanFreq...Y	average of fBodyAccJerk.meanFreq...Y

avg_fBodyAccJerk.meanFreq...Z	average of fBodyAccJerk.meanFreq...Z
avg_fBodyGyro.mean...X		average of fBodyGyro.mean...X

avg_fBodyGyro.mean...Y		average of fBodyGyro.mean...Y

avg_fBodyGyro.mean...Z		average of fBodyGyro.mean...Z

avg_fBodyGyro.std...X		average of fBodyGyro.std...X

avg_fBodyGyro.std...Y			average of fBodyGyro.std...Y

avg_fBodyGyro.std...Z		average of fBodyGyro.std...Z

avg_fBodyGyro.meanFreq...X	average of fBodyGyro.meanFreq...X

avg_fBodyGyro.meanFreq...Y	average of fBodyGyro.meanFreq...Y

avg_fBodyGyro.meanFreq...Z	average of fBodyGyro.meanFreq...Z

avg_fBodyAccMag.mean..		average of fBodyAccMag.mean..

avg_fBodyAccMag.std..		average of fBodyAccMag.std..


avg_fBodyAccMag.meanFreq..	average of fBodyAccMag.meanFreq..

avg_fBodyBodyAccJerkMag.mean..	average of fBodyBodyAccJerkMag.mean..

avg_fBodyBodyAccJerkMag.std..	average of fBodyBodyAccJerkMag.std..

avg_fBodyBodyAccJerkMag.meanFreq..	average of fBodyBodyAccJerkMag.meanFreq..

avg_fBodyBodyGyroMag.mean..	average of fBodyBodyGyroMag.mean..

avg_fBodyBodyGyroMag.std..	average of fBodyBodyGyroMag.std..

avg_fBodyBodyGyroMag.meanFreq..	average of fBodyBodyGyroMag.meanFreq..

avg_fBodyBodyGyroJerkMag.mean..	average of fBodyBodyGyroJerkMag.mean..

avg_fBodyBodyGyroJerkMag.std..	average of fBodyBodyGyroJerkMag.std..



avg_fBodyBodyGyroJerkMag.meanFreq..	average of fBodyBodyGyroJerkMag.meanFreq..
