path <- file.path("./UCI HAR Dataset")
files <- list.files(path, recursive = TRUE)
## Step 2: Load activity, subject and feature info.
## Read data from the files into the variables
#Read the Activity files
#acttest <- file.path(path, "test", "Y_test.txt")
ActivityTest <- read.table(file.path(path, "test", "Y_test.txt"), header = FALSE)
ActivityTrain <- read.table(file.path(path, "train", "Y_train.txt"), header = FALSE)                           
#Read the Subject files
SubjectTrain <- read.table(file.path(path, "train", "subject_train.txt"), header = FALSE)
SubjectTest <- read.table(file.path(path, "test", "subject_test.txt"), header = FALSE)
#Read Features test
FeatureTest <- read.table(file.path(path, "test", "X_test.txt"), header = FALSE)
FeatureTrain <- read.table(file.path(path, "train", "X_train.txt"), header = FALSE)

## Test: Check properties

str(ActivityTest)
str(ActivityTrain)
str(SubjectTrain)
str(SubjectTest)
str(FeatureTest)
str(FeatureTrain)

## Step 3: Merges the training and the test sets to create one data set.
## 1.Concatenate the data tables by rows
dataSubject <- rbind(SubjectTrain, SubjectTest)
dataActivity<- rbind(ActivityTrain, ActivityTest)
dataFeature<- rbind(FeatureTrain, FeatureTest)

## 2. Set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeatureNames <- read.table(file.path(path, "features.txt"), header = FALSE)
names(dataFeature)<- dataFeatureNames$V2

## 3. Merge columns to get the data frame Data for all data
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeature, dataCombine)

## Step 4: Extracts only the measurements on the mean and standard deviation for each measurement.
## 1. Subset Name of Features by measurements on the mean and standard deviation
## i.e taken Names of Features with "mean()" or "std()"
## Extract using grep
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
## 2. Subset the data frame Data by seleted names of Features
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)
## 3. Test : Check the structures of the data frame Data
str(Data)

## Step 5: Uses descriptive activity names to name the activities in the data set
## 1. Read descriptive activity names from "activity_labels.txt"
activityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE)
## 2. Factorize Variable activity in the data frame Data using descriptive activity names
Data$activity<-factor(Data$activity,labels=activityLabels[,2])
## Test Print
head(Data$activity,30)

## Step 6: Appropriately labels the data set with descriptive variable names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))
## Test Print
names(Data)

## Step 7: Creates a independent tidy data set

newData<-aggregate(. ~subject + activity, Data, mean)
newData<-newData[order(newData$subject,newData$activity),]
write.table(newData, file = "tidydata.txt",row.name=FALSE,quote = FALSE, sep = '\t')