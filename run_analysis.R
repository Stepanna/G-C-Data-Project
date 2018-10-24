library(downloader)
library(plyr);
library(knitr)
## Step 1

if(!file.exists("./project")){
        dir.create("./project")
}
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("./project/project_Dataset.zip")){
        download.file(Url,destfile="./project/project_Dataset.zip",mode = "wb")
}

if(!file.exists("./project/UCI HAR Dataset")){
        unzip(zipfile="./project/project_Dataset.zip",exdir="./project")
}

path <- file.path("./project" , "UCI HAR Dataset")
files<-list.files(path, recursive=TRUE)

## Step 2

TestActivity  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
TrainActivity <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE)

TrainSubject <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
TestSubject  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE)

TestFeatures  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
TrainFeatures <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE)

## Step 3
dataSubject <- rbind(TrainSubject, TestSubject)
dataActivity<- rbind(TrainActivity, TestActivity)
dataFeatures<- rbind(TrainFeatures, TestFeatures)

names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

dataCombine <- cbind(dataSubject, dataActivity)
allData <- cbind(dataFeatures, dataCombine)

## Step 4
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)
##str(Data)

## Step 5
activityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE)
Data$activity<-factor(Data$activity,labels=activityLabels[,2])
## Test Print
head(Data$activity,30)

## Step 6
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))
## Test Print
names(Data)


newData<-aggregate(. ~subject + activity, Data, mean)
newData<-newData[order(newData$subject,newData$activity),]
write.table(newData, file = "tidydata.txt",row.name=FALSE,quote = FALSE, sep = '\t')