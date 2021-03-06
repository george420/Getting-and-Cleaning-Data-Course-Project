# Getting-and-Cleaning-Data-Course-Project  
# Introduction
This repository is for the "Getting and Cleaning data" course project.

# Raw data
The raw data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here is the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


# run_analysis.R 
Before running run_analysis.R, one needs to download and unzip the zip file containing the raw data into his/her working directory.

run_analysis.R does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# TidyData.txt
This is an output data set by run_analysis.R.

# CodeBook.md
CodeBook.md describes the variables, the data, and any transformations or work that the run_analysis.R script performed to clean up the data.
