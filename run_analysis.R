##STEP 1: Read in and then amend the variable names to make life easy
##          Note: Features.txt must be in the working directory for this to work
vHeaders <- read.table("Features.txt")
dim(vHeaders)
## t transposes the vHeader matrix to set variable names as col names
colHeaders<-t(vHeaders[,2])
##now remove spaces and brackets so colHeaders can be a vector to pass to read.table
##These will be my new variable names required in the assignment step 4
##This appraoch makes them more readbale yet still linkable to the original code book
## It removes the brackets () and spaces, the code also automatically replaces "-" with "." in the read.table function
colHeaders<-sub("(","",colHeaders,fixed=TRUE)
colHeaders<-sub(")","",colHeaders,fixed=TRUE)
colHeaders<-sub(" ","",colHeaders)

##STEP 2: Read in the X_train file using the variable names as headers!
##        X_train must be in working directory 
##        THIS TAKES CARE OF POINT 4 in the project - Appropriately labels the data set with descriptive variable names.
dXTrain <- read.table("X_train.txt",col.names =colHeaders))
##check the dimensions
dim(dXTrain)
##check column names and structure
str(dXTrain)

##STEP 3 - only keep the required columns
##This next bit was a bit manual as I got the variable names manually out of the text file
##there are cleverer methods, but at least this way they are specific and I could review them
## I simply use this vector "tBodyAcc.mean.X","tBodyAcc.mean.Y","tBodyAcc.mean.Z","tBodyAcc.std.X","tBodyAcc.std.Y","tBodyAcc.std.Z","tGravityAcc.mean.X","tGravityAcc.mean.Y","tGravityAcc.mean.Z","tGravityAcc.std.X","tGravityAcc.std.Y","tGravityAcc.std.Z","tBodyAccJerk.mean.X","tBodyAccJerk.mean.Y","tBodyAccJerk.mean.Z","tBodyAccJerk.std.X","tBodyAccJerk.std.Y","tBodyAccJerk.std.Z","tBodyGyro.mean.X","tBodyGyro.mean.Y","tBodyGyro.mean.Z","tBodyGyro.std.X","tBodyGyro.std.Y","tBodyGyro.std.Z","tBodyGyroJerk.mean.X","tBodyGyroJerk.mean.Y","tBodyGyroJerk.mean.Z","tBodyGyroJerk.std.X","tBodyGyroJerk.std.Y","tBodyGyroJerk.std.Z","tBodyAccMag.mean","tBodyAccMag.std","tGravityAccMag.mean","tGravityAccMag.std","tBodyAccJerkMag.mean","tBodyAccJerkMag.std","tBodyGyroMag.mean","tBodyGyroMag.std","tBodyGyroJerkMag.mean","tBodyGyroJerkMag.std","fBodyAcc.mean.X","fBodyAcc.mean.Y","fBodyAcc.mean.Z","fBodyAcc.std.X","fBodyAcc.std.Y","fBodyAcc.std.Z","fBodyAccJerk.mean.X","fBodyAccJerk.mean.Y","fBodyAccJerk.mean.Z","fBodyAccJerk.std.X","fBodyAccJerk.std.Y","fBodyAccJerk.std.Z","fBodyGyro.mean.X","fBodyGyro.mean.Y","fBodyGyro.mean.Z","fBodyGyro.std.X","fBodyGyro.std.Y","fBodyGyro.std.Z","fBodyAccMag.mean","fBodyAccMag.std","fBodyBodyAccJerkMag.mean","fBodyBodyAccJerkMag.std","fBodyBodyGyroMag.std","fBodyBodyGyroJerkMag.mean","fBodyBodyGyroJerkMag.std"
## to trim the data set to the required size
dXTrain <- dXTrain[,c("tBodyAcc.mean.X","tBodyAcc.mean.Y","tBodyAcc.mean.Z","tBodyAcc.std.X","tBodyAcc.std.Y","tBodyAcc.std.Z","tGravityAcc.mean.X","tGravityAcc.mean.Y","tGravityAcc.mean.Z","tGravityAcc.std.X","tGravityAcc.std.Y","tGravityAcc.std.Z","tBodyAccJerk.mean.X","tBodyAccJerk.mean.Y","tBodyAccJerk.mean.Z","tBodyAccJerk.std.X","tBodyAccJerk.std.Y","tBodyAccJerk.std.Z","tBodyGyro.mean.X","tBodyGyro.mean.Y","tBodyGyro.mean.Z","tBodyGyro.std.X","tBodyGyro.std.Y","tBodyGyro.std.Z","tBodyGyroJerk.mean.X","tBodyGyroJerk.mean.Y","tBodyGyroJerk.mean.Z","tBodyGyroJerk.std.X","tBodyGyroJerk.std.Y","tBodyGyroJerk.std.Z","tBodyAccMag.mean","tBodyAccMag.std","tGravityAccMag.mean","tGravityAccMag.std","tBodyAccJerkMag.mean","tBodyAccJerkMag.std","tBodyGyroMag.mean","tBodyGyroMag.std","tBodyGyroJerkMag.mean","tBodyGyroJerkMag.std","fBodyAcc.mean.X","fBodyAcc.mean.Y","fBodyAcc.mean.Z","fBodyAcc.std.X","fBodyAcc.std.Y","fBodyAcc.std.Z","fBodyAccJerk.mean.X","fBodyAccJerk.mean.Y","fBodyAccJerk.mean.Z","fBodyAccJerk.std.X","fBodyAccJerk.std.Y","fBodyAccJerk.std.Z","fBodyGyro.mean.X","fBodyGyro.mean.Y","fBodyGyro.mean.Z","fBodyGyro.std.X","fBodyGyro.std.Y","fBodyGyro.std.Z","fBodyAccMag.mean","fBodyAccMag.std","fBodyBodyAccJerkMag.mean","fBodyBodyAccJerkMag.std","fBodyBodyGyroMag.std","fBodyBodyGyroJerkMag.mean","fBodyBodyGyroJerkMag.std")]
str(dXTrain)

##STEP 4 - get the activity detail and add it to data frame
##        the link here is a bit vague- 
##         but essentially the assumption is that the row orders in the files y_ are the same
##         requires the y_train.txt to be in working directory
dXTrainActivities <- read.table("y_train.txt",col.names="Activity")
dXTrain<-cbind(dXTrainActivities,dXTrain)

##STEP 5 - get the subject detail and add it to dataframe
##         the link here is a bit vague- 
##         but essentially the assumption is that the row orders are the same in the subject_ file
## requires the subject_train.txt to be in working directory
dXTrainSubjects <- read.table("subject_train.txt",col.names="Subject")
##step 5 - attach the subject detail to the first column in the dXTrain frame
dXTrain<-cbind(dXTrainSubjects,dXTrain)

## OK - so now we have completed Train section and will add the Test dataset
## I am just going to copy and paste the code from above without all the comments
## One could write a loop to do this but its not worth the effort this time around!
## note: the following files must be in the working directory: 
##       subject_test.txt, y_test.txt, X_test.txt

##STEP: Read in the X_test file into a new fram dXTest using the variable names as headers!
dXTest <- read.table("X_test.txt",col.names =colHeaders)

##STEP: - only keep the required columns
dXTest <- dXTest[,c("tBodyAcc.mean.X","tBodyAcc.mean.Y","tBodyAcc.mean.Z","tBodyAcc.std.X","tBodyAcc.std.Y","tBodyAcc.std.Z","tGravityAcc.mean.X","tGravityAcc.mean.Y","tGravityAcc.mean.Z","tGravityAcc.std.X","tGravityAcc.std.Y","tGravityAcc.std.Z","tBodyAccJerk.mean.X","tBodyAccJerk.mean.Y","tBodyAccJerk.mean.Z","tBodyAccJerk.std.X","tBodyAccJerk.std.Y","tBodyAccJerk.std.Z","tBodyGyro.mean.X","tBodyGyro.mean.Y","tBodyGyro.mean.Z","tBodyGyro.std.X","tBodyGyro.std.Y","tBodyGyro.std.Z","tBodyGyroJerk.mean.X","tBodyGyroJerk.mean.Y","tBodyGyroJerk.mean.Z","tBodyGyroJerk.std.X","tBodyGyroJerk.std.Y","tBodyGyroJerk.std.Z","tBodyAccMag.mean","tBodyAccMag.std","tGravityAccMag.mean","tGravityAccMag.std","tBodyAccJerkMag.mean","tBodyAccJerkMag.std","tBodyGyroMag.mean","tBodyGyroMag.std","tBodyGyroJerkMag.mean","tBodyGyroJerkMag.std","fBodyAcc.mean.X","fBodyAcc.mean.Y","fBodyAcc.mean.Z","fBodyAcc.std.X","fBodyAcc.std.Y","fBodyAcc.std.Z","fBodyAccJerk.mean.X","fBodyAccJerk.mean.Y","fBodyAccJerk.mean.Z","fBodyAccJerk.std.X","fBodyAccJerk.std.Y","fBodyAccJerk.std.Z","fBodyGyro.mean.X","fBodyGyro.mean.Y","fBodyGyro.mean.Z","fBodyGyro.std.X","fBodyGyro.std.Y","fBodyGyro.std.Z","fBodyAccMag.mean","fBodyAccMag.std","fBodyBodyAccJerkMag.mean","fBodyBodyAccJerkMag.std","fBodyBodyGyroMag.std","fBodyBodyGyroJerkMag.mean","fBodyBodyGyroJerkMag.std")]

##STEP: - get the activity detail and add it to dXTest data frame
dXTestActivities <- read.table("y_test.txt",col.names="Activity")
dXTest<-cbind(dXTestActivities,dXTest)

##STEP: - get the subject detail and add it to dXTest dataframe
dXTestSubjects <- read.table("subject_test.txt",col.names="Subject")
##STEP: - attach the subject detail to the first column in the dXTest frame
dXTest<-cbind(dXTestSubjects,dXTest)

##STEP: COMBINE the two sets
##Now because these items are nice and neatly structured, we can just use the rbind function to join them
dXALL <- rbind(dXTest,dXTrain)
head(dXALL)
tail(dXALL)


##Now we put in descriptive labels for the activity - this is a shocker...
dim(dXALL)
dXALL$Activity <- sub("1", "WALKING", dXALL$Activity)
dXALL$Activity <- sub("2", "WALKING_UPSTAIRS", dXALL$Activity)
dXALL$Activity <- sub("3", "WALKING_DOWNSTAIRS", dXALL$Activity)
dXALL$Activity <- sub("4", "SITTING", dXALL$Activity)
dXALL$Activity <- sub("5", "STANDING", dXALL$Activity)
dXALL$Activity <- sub("6", "LAYING_DOWN", dXALL$Activity)

str(dXALL)

##address point 5 - write out the final aggregated Tidt Data set to TidyData.txt
write.table(aggregate(dXALL[,3:67],list(Subject =dXALL$Subject,Activity=dXALL$Activity) , mean),file="TidyData.txt",row.names=FALSE)

