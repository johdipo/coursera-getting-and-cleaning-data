# README

This readme explains the script in run_analysis.R

### 1. Reading and merging the train set and the test set

#### Reading individual files

In this section I use read.table() to read individual files. I use the argument col.names in order to avoid creating default column name (V1, V2, ...) which will avoid confusion later while merging.

#### Creating one table for train and one table for test

In this section I merge the files to create two tables: train and test. For each table I group the subject and the measurement. I used data.frame() as the goal is just to add columns. cbind() would have done the trick also.

### Merging train set and test set
Create one unique dataset gathering train + test using merge()I use the argument all = TRUE to make sure all columns will be there. rbind() would have worked as well.


### 2. Extracting only the measurements on the mean and standard deviation


Before extracting only the columns with means and std, I have to make sure the columns are in the right order. I've decided to put the "subject" and "ActivityLabel" at the end of the table so that when filtering I can use the index given by the function grep()


#### Finding features with "mean" or "std"

First I read the features.txt
Second I use grep() to find any repetition containing "mean" OR "std", I store the integers returned in mean_std_column_filter. I now have a vector with the index of the columns of the measurement to keep. 
I must indicate that I also would like to keep the last two columns, which are not the measurements but the "subject" and the "ActivityLabel". This is why I add 562:563 at the end of mean_std_column_filter. I stored that result in a new vector column_filter 
Then I apply this vector to subset the columns in a new dataframe, dataset_extract



### 3. Using activity names to name activity in dataset


First I read the table. I give colnames to make to avoid confusion while merging tables.
Then I merge the main table (dataset_extract) with this new table, it is a left join (all.x) as I keep only the columns from dataset_extract and I only want to substitute the activity integer by the activity name.
FInally, I remove the first column that is a duplicate. 


### 4. Labeling dataset variables

First I use the grep() function again to find any repetition containing "mean" OR "std", but this time I use the attribute value = TRUE that will return the character string instead of the index. I store all the names in features_names.
Second, I add to this vector of character the name of the last two columns "Subject" and "ActivityLabel".
Lastly I assign the names using colnames()

### 5. Creating a second dataset with averages

For this section I use the dplyr package as its ability to group and summarize variables and observations will be useful.
So I group the observations by Subject and ActivityLabel.
Then I use the function summarize_all which will apply the mean() function to all variable.
Finally I print the table and write it in a text file.
