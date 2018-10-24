Course for Coursera Getting and Cleaning Data course. "analysis.R" - code written in R.
* Downloade the dataset. 
* List all the files 
* Merge the training and test sets
* Extract only mean and standart deviation (str)
* Name the activities
* Creates a new dataset
tidydata.txt - final output

Step 1: Download the dataset and unzip folder

Check if directory already exists?
Check if zip has already been downloaded in project directory?
Check if zip has already been unzipped?
List all the files of UCI HAR Dataset folder
	
Step 2: Load activity, subject and feature info.
Read data from the files into the variables
1. Read the Activity files
2. Read the Subject files
3. Read Fearures files

Step 3: Merges the training and the test sets to create one data set.

1.Concatenate the data tables by rows
2. Set names to variables
3. Merge columns to get the data frame Data for all data

Step 4: Extracts only the measurements on the mean and standard deviation for each measurement.
1. Subset Name of Features by measurements on the mean and standard deviation
i.e taken Names of Features with "mean()" or "std()"
Extract using grep
2. Subset the data frame Data by seleted names of Features
3. Test : Check the structures of the data frame Data

Step 5: Uses descriptive activity names to name the activities in the data set
1. Read descriptive activity names from "activity_labels.txt"
2. Factorize Variale activity in the data frame Data using descriptive activity names

Step 6: Appropriately labels the data set with descriptive variable names

Step 7: Creates a independent tidy data set