## Getting and Data cleaning- Course project

The goal of this project is to clean up the data provided.The data is from Samsung phone regarding the activity of a experiment sample.The code for this project is available in this repo with the name run_analysis.R .The steps that are followed in the code to maketiday data are below

* Download the load from the UCI website

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  
* The files that are provided are below.There are other files related to intertial signals which is not considered for this project

      * X_train
      * Y_trian
      * Subject_trian.txt
      * X_test.txt
      * Y_test.txt
      * Subject_test.txt
      * features.txt
      * activity_lables.txt

* Import features file to get the column names of X and Y files for train and test
* Import X,Y,Subject test and train along with the column names using read.table into R 
* Import activity label file to get the activity number and acitivity description
* Create combined test and train sets using the corresponding X,Y,subject files
* Combine test and train set into one data set
* Subset the data to get only columns with mean and standard deviation
* Clean up column names of the subject to more meaningful decriptions using expressions and gsub command.
* Merge activity labels with the subset file to include activity descriptions and create a final data prep set.
* Finally create a set with the mean of all the columns in the final data prep set grouped by subject and activity description.
* Write the tidy dataset to a .txt file with write.table command.


The final tidy file is clean after going the steps as mentioned above.It contains 81 columns with meaningful descriptive names and evry feature contains information for a subject and activity.The column descriptions can be found in codebook.md

