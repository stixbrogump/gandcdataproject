---
title: "README.md"
author: "Andrew Taylor"
date: "Tuesday, April 21, 2015"
output: html_document
---

The purpose of the run_analysis.R is to produce a tidy dataset of the Samsung Smartphone trial (details of which can be found at http://http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To use the file, the following steps would need to be followed:

1. Save run_analysis.R into your working directory
2. Download the raw data files from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/
3. Extract these two key files into your working directory:
  UCI HAR Dataset\train\X_train.txt
	UCI HAR Dataset\test\X_test.txt
4. 

##So the dataset should be stripped down to the mean and std() of these variables
##the XYZ have to be broken down in the indivdual X Y Z variables found in the data set
##tBodyAcc-XYZ
##tGravityAcc-XYZ
##tBodyAccJerk-XYZ
##tBodyGyro-XYZ
##tBodyGyroJerk-XYZ
##tBodyAccMag
##tGravityAccMag
##tBodyAccJerkMag
##tBodyGyroMag
##tBodyGyroJerkMag
##fBodyAcc-XYZ
##fBodyAccJerk-XYZ
##fBodyGyro-XYZ
##fBodyAccMag
##fBodyAccJerkMag
##fBodyGyroMag
##fBodyGyroJerkMag

so the list is:
1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
81 tBodyAccJerk-mean()-X
82 tBodyAccJerk-mean()-Y
83 tBodyAccJerk-mean()-Z
84 tBodyAccJerk-std()-X
85 tBodyAccJerk-std()-Y
86 tBodyAccJerk-std()-Z
121 tBodyGyro-mean()-X
122 tBodyGyro-mean()-Y
123 tBodyGyro-mean()-Z
124 tBodyGyro-std()-X
125 tBodyGyro-std()-Y
126 tBodyGyro-std()-Z
161 tBodyGyroJerk-mean()-X
162 tBodyGyroJerk-mean()-Y
163 tBodyGyroJerk-mean()-Z
164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
253 tBodyGyroJerkMag-mean()
254 tBodyGyroJerkMag-std()
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
503 fBodyAccMag-mean()
504 fBodyAccMag-std()
516 fBodyBodyAccJerkMag-mean()
517 fBodyBodyAccJerkMag-std()
530 fBodyBodyGyroMag-std()
531 fBodyBodyGyroMag-mad()
542 fBodyBodyGyroJerkMag-mean()
543 fBodyBodyGyroJerkMag-std()



The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

DELETE!! -- there are 561 features in each of the files (i.e. 561 columns)
