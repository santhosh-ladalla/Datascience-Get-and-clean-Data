### Coursera Data science course project : Getting and cleaning data
### Code by Santhosh Ladalla
### Git HuB : https://github.com/justmarkham/kaggle-allstate

#Reading features.txt file which contains the features names
  var_names <- read.table("features.txt",sep= " ",col.names=c("id", "name"),fill=FALSE,strip.white=TRUE)

#Reading train x,y and subject .txt files with the column names from above(var_names)
  x_train <- read.table("./train/X_train.txt",col.names=var_names$name)
  y_train <- read.table("./train/Y_train.txt")
  subject_train <- read.table("./train/subject_train.txt")

#Reading test x,y and subject .txt files with the column names from above(var_names)
  x_test <- read.table("./test/X_test.txt",col.names=var_names$name)
  subject_test <- read.table("./test/subject_test.txt")
  y_test <- read.table("./test/Y_test.txt")

#Reading activity file which contains activity description

activity_label <- read.table("activity.txt")
names(activity_label)[1] <- "activity" #naming column appropriately
names(activity_label)[2] <- "activity_desc" #naming column appropriately

#Merging all the files for train and test

train <- cbind(x_train,y_train,subject_train)
test <- cbind(x_test,y_test,subject_test)
names(train)[562] <- "activity" #naming column appropriately
names(train)[563] <- "subject" #naming column appropriately
names(test)[563] <- "subject" #naming column appropriately
names(test)[562] <- "activity" #naming column appropriately

#Merging train and test files
data <- rbind(train,test)

# creating a sub set of data for the measurements mean and standard deviation
sub <- c(grep("mean..",names(data)),grep("std..",names(data)))
sub_data <- data[,c(sub,562,563)]

#Appropriately labeling the data set with meaningful variable names

names(sub_data)<-gsub("mean..","mean",names(sub_data))
names(sub_data)<-gsub("std..","std",names(sub_data))
names(sub_data) <- gsub("\\.\\.\\.","\\.",names(sub_data))
names(sub_data) <- gsub("\\.\\.$","",names(sub_data))
names(sub_data) <- gsub("\\.","_",names(sub_data))

#Merging activity descriptions with the subset data to get the descriptions
sub_data_2 <- merge(sub_data, activity_label, by.x = "activity", by.y = "activity")
final_data_prep <- sub_data_2[,-c(1)] # remove the activity columns 
final_data_prep$activity_desc <- gsub("_"," ",final_data_prep$activity_desc) # cleaning up the activity description
  

# Creating final data set with means for all of the columns group by  subject and activity
final_data <- aggregate(final_data_prep[,-c(80,81)], by =list(final_data_prep[,80], final_data_prep[,81]), FUN = mean, na.rm = TRUE)
names(final_data)[1] <- "subject"
names(final_data)[2] <- "activity_desc"

#Creating the file in the current working directory
write.table(final_data,"course_project.txt",row.name=FALSE)



