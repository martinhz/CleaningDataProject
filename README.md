# CleaningDataProject

This project combines 2 datasets:  TEST, TRAIN .
These datasets will be combined, then a summary output file prepared, calculating the average of all variables in he original data that are either means, or standard-deviations.
Each dataset (TEST, TRAIN) is held in its own sub folder and consists of 3 datafiles each with: X-, Y-, subject  data

Frst the data is read from the 3 files with the TEST data set
The 3 datasets are combined and  the original datasets cleaned up

Simiularly the 3 files with the TRAIN data set are read
The 3 datasets are combined and  the original datasets cleaned up

Then the  TRAIN and TEST data sets are combined
and  the original datasets (TRAIN and TEST) are cleaned up

The column headings are held in a separate file; these are read and used as the column headings in the dataframe.

As there are many unneeded columns in the dataset, we only need those with 'mean'or 'std'in the column name, we will remove all columns that do not meet the requirement. 
Calculate a logical vector of headings containing 'std'OR 'mean'
but ensure the first 2 key columns are not lost by setting the BOOLEAN for these separately
Use the logical vector to select only the columns containing  'std'OR 'mean'but including the first 2 key columns

One of the key fields is the activity, but this is initially only in the dataset as an ID. We need to have the activity descriptions that are held in the activity labels from the activity_labels.txt file.
This file is read in, then usng the merge function the activity labels are added to the data set

In preparation of the summarisation, the dataset is grouped by activyDescription, subjectID
Now we can summarise the data calculating the means of each variable, by activyDescription, subjectID 
The column headings need a new name to distinguish ferom the orioginal column headings; append 'avg_' as prefix to each variable name, but resetting the first 3 grouped-by variable names 

Now the tidy dataset can be output to tidy_Summarized_data.txt 
