download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="Dataset.zip")
unzip("Dataset.zip")
setwd("./UCI Har Dataset")
library(plyr)
library(dplyr)

activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")

#Reads in the train data with column names inserted
subject_train<-read.table("train/subject_train.txt",col.names="ID")
x_train<-read.table("train/X_train.txt", col.names=as.character(features$V2))
y_train<-read.table("train/y_train.txt", col.names="Activity")
#Binds the separate train data into a single dataset
train_data<-cbind(subject_train, y_train, x_train)

#Reads in the test data with column names inserted
subject_test<-read.table("test/subject_test.txt",col.names="ID")
x_test<-read.table("test/X_test.txt",col.names=as.character(features$V2))
y_test<-read.table("test/y_test.txt",col.names="Activity")
#Binds the separate test data into a single dataset
test_data<-cbind(subject_test, y_test, x_test)

#combines the train and test data to a single dataset
complete_data<-rbind(train_data,test_data)
#Selects only the columns that include measurements for mean or standard deviation
complete_data_subset<-complete_data%>%
        select(ID, Activity,grep("mean|std", colnames(complete_data))) %>%
#Arranges the data in order by ID and Activity (needed to change the activity names)
        arrange(ID, Activity)
#Changes the activity names from integers to strings outlined in activity_labels.txt file
complete_data_subset$Activity<-mapvalues(complete_data_subset$Activity, from=c("1","2","3","4","5","6"), to=as.character(unique(activity_labels$V2)))

tidy_data<-complete_data_subset%>%
        group_by(ID, Activity)%>%
#Creates the tidy data set to calculate the mean of each measurement
        summarise_each(funs(mean),-(ID:Activity))
#Changes the column names to add Mean
colnames(tidy_data)[-(1:2)]<-paste("Mean",colnames(tidy_data)[-(1:2)] ,sep=" ")
write.table(tidy_data, "TidyData.txt", row.name=FALSE)