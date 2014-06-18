## run_analysis.R 
####################
## The Samsung files have to be in the working directory as follows:
## The files should be located at: C:\PredictiveAnalysis\R\GetandCleanData\UCI HAR Dataset

## 1. Merges the training and the test sets to create one data set.
#1) First Read the raw data

mytrainXvalues <- read.table("./GetandCleanData/UCI HAR Dataset/train/X_train.txt", comment.char = "", colClasses="numeric")
mytrainYvalues <- read.table("./GetandCleanData/UCI HAR Dataset/train/y_train.txt", comment.char = "", colClasses="numeric")

mytestYvalues <- read.table("./GetandCleanData/UCI HAR Dataset/test/y_test.txt", comment.char = "", colClasses="numeric")
mytestXvalues <- read.table("./GetandCleanData/UCI HAR Dataset/test/X_test.txt", comment.char = "", colClasses="numeric")


#2) Merge them 
myXvalues=rbind(mytrainXvalues,mytestXvalues)
myYvalues=rbind(mytrainYvalues,mytestYvalues)


## 2. Extracts only the measurements on the mean and standard deviation for 
##   each measurement. and 
## 3. Uses descriptive activity names to name the activities in the data set

#1. Read the features.txt file
features <- read.table("./GetandCleanData/UCI HAR Dataset/features.txt", comment.char = "")

#2. Assign the names to the columns
colnames(myXvalues)<-features$V2

#3. choosing the mean and std columns
keep<-grep('mean()|std()|Mean|Std|mean|std',features[,"V2"])

#4. working only with these columns
myX<-myXvalues[keep]

#5. attaching the proper Activity as the Column # 87
myY<-as.numeric(unlist(myYvalues))

myX$act<-myY

## 4. Appropriately labels the data set with descriptive variable names. 

activity <- read.table("./GetandCleanData/UCI HAR Dataset/activity_labels.txt", comment.char = "")

colnames(activity)<-c("act", "Activity")
mmyX= merge(myX, activity, by.x="act", by.y="act")
mmyX$act<-NULL

#1. Taking the Mean and the Std
by(mmyX[,-87],mmyX$Activity,colMeans)

apply(mmyX[,-87][mmyX$Activity=="WALKING",],2,sd)
apply(mmyX[,-87][mmyX$Activity=="WALKING_UPSTAIRS",],2,sd)
apply(mmyX[,-87][mmyX$Activity=="WALKING_DOWNSTAIRS",],2,sd)
apply(mmyX[,-87][mmyX$Activity=="SITTING",],2,sd)
apply(mmyX[,-87][mmyX$Activity=="STANDING",],2,sd)
apply(mmyX[,-87][mmyX$Activity=="LAYING",],2,sd)

##5. Creates a second, independent tidy data set with the average of 
##   each variable for each activity and each subject. 

# Read the files
subjectTraintvalues <- read.table("./GetandCleanData/UCI HAR Dataset/train/subject_train.txt", comment.char = "", colClasses="numeric")
subjectTestvalues <- read.table("./GetandCleanData/UCI HAR Dataset/test/subject_test.txt", comment.char = "", colClasses="numeric")

#merge them together
mySubjectvalues=rbind(subjectTraintvalues,subjectTestvalues)

# add the Subject values to the main data frame as a new column
mySbj<-as.numeric(unlist(mySubjectvalues))
mmyX$Subject<-mySbj

# Begin to Build the query to answer thr question #5
library(sqldf)
library(tcltk)
columnas<-sqldf("select * from mmyX  limit 0 "  )

# choose only the interesting columns
namecols<-names(columnas[c(-87,-88)])

# Construct the SQL query
avgstring<-paste("avg(",namecols,"),", sep=" ",collapse='')
avgstring<-sub("angle_Z_gravityMean_ ),","angle_Z_gravityMean_ )",avgstring)
querysql<-paste("select Activity, Subject, ",avgstring," from mmyX  group by Activity,Subject")

# Run the query and get the final results
Q5<-sqldf(querysql)

# Write a file to the getwd() directory
write.table(Q5, file = "Q5.csv", sep = ",", col.names = NA, qmethod = "double")

# Open the file with Excell and save it as a TXT file separated 
# with Tab
 
