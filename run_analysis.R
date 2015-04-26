#read in the 3 files with the test data set
testData.X <- read.table("./test/X_test.txt", header = FALSE)
testData.Y <- read.table("./test/Y_test.txt", header = FALSE, col.names=c("activityID"))
testData.subject <- read.table("./test/subject_test.txt", header = FALSE,col.names=c("subjectID"))

#combine the 3 datasets and clean up the original datasets
testData <- cbind(testData.subject,testData.Y, testData.X )
rm("testData.X", "testData.Y", "testData.subject")

#read in the 3 files with the train data set
trainData.X <- read.table("./train/X_train.txt", header = FALSE)
trainData.Y <- read.table("./train/Y_train.txt", header = FALSE, col.names=c("activityID"))
trainData.subject <- read.table("./train/subject_train.txt", header = FALSE,col.names=c("subjectID"))

#combine the 3 datasets and clean up the original datasets
trainData <- cbind(trainData.subject,trainData.Y, trainData.X )
rm("trainData.X", "trainData.Y", "trainData.subject")

#combine the train and test data sets and clean up the original datasets
data <- rbind(trainData,testData)
rm("trainData", "testData")

#read in the column headings'from the features.txt file
features <- read.table("./features.txt", header = FALSE)
features <- c("subjectID", "activityID", as.vector(features$V2))
colnames(data)<-features

#calculate a logical vector of headings containing 'std'OR 'mean'
columns.sel <-sapply(features, function(inTxt){grepl("std", inTxt) | grepl("mean", inTxt)})

#but ensure the first 2 key columns are not lost
columns.sel[1]<-TRUE
columns.sel[2]<-TRUE

#use the logical vector to select only the columns containing  'std'OR 'mean'but including the first 2 key columns
data.sub <- data[,columns.sel]

#read in the activity labels from the activity_labels.txt file
activities <- read.table("./activity_labels.txt", header = FALSE)
colnames(activities)<-c("activityID", "activyDescription")

#use merge functon to add the activity labels to the data set
data.merged <-merge(activities, data.sub)

#in preparation of the summarisation, perform the group by activyDescription, subjectID
library(dplyr)
data.grouped <- group_by(data.merged, activyDescription, subjectID )

#summarise the data calculating the means of each variable, by activyDescription, subjectID 
data.summ <-summarise_each(data.grouped, funs(mean))

#give the column headings more accurate names by appending 'avg_' as prefix to each variable name, but resetting the first 3 variable names 
colnames(data.summ)<-lapply(names(data.summ), function(inTxT){paste("avg_", inTxT, sep="")})
colnames(data.summ)[1]<-"activyDescription"
colnames(data.summ)[2]<-"subjectID"
colnames(data.summ)[3]<-"activityID"

#output the tidy dataset
write.table(data.summ, "tidy_Summartized_data.txt", row.name=FALSE )

