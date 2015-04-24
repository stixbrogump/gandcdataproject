---
title: "README.md"
author: "Andrew Taylor"
date: "Tuesday, April 21, 2015"
output: html_document
---

The purpose of the run_analysis.R is to produce a tidy dataset of the Samsung Smartphone trial data - details of which can be found at http://http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To use the file, the following steps would need to be followed:

1. Save run_analysis.R into your working directory
2. Download the raw data files from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/ (Note: the Zip file containing the data has also been saved in Github in case the link \ data changed)
3. Extract these key files directly into your working directory (i.e. no sub-directories):
* UCI HAR Dataset\train\X_train.txt
* UCI HAR Dataset\train\y_train.txt
* UCI HAR Dataset\train\subject_train.txt
* UCI HAR Dataset\test\X_train.txt
* UCI HAR Dataset\test\y_train.txt
* UCI HAR Dataset\test\subject_train.txt
* UCI HAR Dataset\features.txt

4. Run the run_analysis.R file. It will output a file called "TidyData.txt" into your working directory

Note: The run_analysis.R file is highly commented and also contains various statements to aid in viewing the data set as the script progresses. The script can also just be run and then the final output viewed in the .txt file as described above.

