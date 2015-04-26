# CleaningDataProject

This project uses 2 datasets:  TEST, TRAIN which will be combined, then a summary output file prepared, calculating the average of all variables in the original data that are either means, or standard-deviations.
Each dataset (TEST, TRAIN) is held in its own sub folder and consists of 3 datafiles each with: X-, Y-, subject  data

Frst the 3 files with the TEST data set are read, then the 3 datasets are combined into a new dataframe TEST and  the original datasets cleaned up

Similarly the 3 files with the TRAIN data set are read and combined into a new dataframe TRAIN and then the original datasets cleaned up.

Then the TRAIN and TEST data sets are combined
and  the original datasets (TRAIN and TEST) are cleaned up

The column headings are held in a separate file; these are read and applied as the column headings in the dataframe.

As there are many unneeded columns in the dataset, (we only need those with 'mean'or 'std'in the column name) we will remove all columns that do not meet the requirement. 
Calculate a logical vector of headings containing 'std' OR 'mean'
but ensure the first 2 key columns are not lost by setting the BOOLEAN for these separately in the logical vector.
Use the logical vector to select only the columns containing  'std' OR 'mean' but including the first 2 key columns

One of the key fields is the activity, but this is initially only in the dataset as an ID. We need to have the activity descriptions that are held in the activity labels from the activity_labels.txt file.
This file is read in, then using the merge function the activity labels are added to the data set

In preparation of the summarisation, the dataset is grouped by activyDescription, subjectID
Now we can summarise the data calculating the means of each variable, by activyDescription, subjectID 
The column headings need a new name to distinguish ferom the orioginal column headings; append 'avg_' as prefix to each variable name, but resetting the first 3 grouped-by variable names 

Now the tidy dataset can be output to tidy_Summarized_data.txt using write.table.

The dataset can be re-read into R using: read.table("tidy_Summartized_data.txt",header=TRUE)
