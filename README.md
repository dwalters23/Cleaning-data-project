Getting and Cleaning Data Project Notes
=======================================
### Introduction

This repo contains the project for the Getting and Cleaning data course on Coursera.

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

### Contents

The contents of the repository are:

README.md:  					This file.
run_analysis.R:  				The single script file containing all the logic for the assignment.
cleaning_data_project_out.txt:	The output tidy dataset as described in the assignment.
cleaning_data_project_out.csv:	A .csv version of the tidy datasetet just for kicks.
codebook.md:  					The data dictionary describing the output tidy dataset.

### Project Data Overview

Wearable computing experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  Finally, only the measurements on the mean and standard deviation for each measurement were retained. See 'codebook.md' for more details. 

The data in this project has no units because it is normalized in the range [-1,1].
 
### Workflow Discussion

The file run_analysis.R contains the following logic:
- Download and unzip the data files
- Read and combine the "train" and "test" datasets
- Assign column names to the dataset from features.txt
- Extract (keep) only the measurements on the mean and standard deviation for each measurement.  I have defined this by selecting those features that have a "std()" or "mean()" in their names.
- Assign descriptive activity numbers to each sample from y_xxxx.txt
- Translate those activity numbers to English descriptors
- Rename the feature/column labels to be more readable
- Create a second, independent tidy data set with the average of each variable for each activity and each subject
- Write this second data set to a file for uploading to the repository

### To Run This Project

There is currently one hard coded parameter that will need to be changed to run on another computer.  Line 5, the "setwd()" command, will need to be changed based on the new user's environment.  After that change, simply invoke
> run_analysis()
and the program will run to completion.

To properly read the output file, the read.table("file", header=TRUE) command will work nicely. The output file has 180 observations of 68 variables.


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.




