# This file describes how the script run_analysis.R works
**Step 1 Read all the data sets into R**

	1. Read activity lables and load the content into a variable Activity_Type
	2. Read test data and load the contents into variables x_test, y_test
	3. Read training data and load the contents into variables x_train, y_train
	4. Read features data and load the contents into a variable features

**Step 2--Merge all the three DataSets**

	1. x_test, x_train and y_test, y_train and subject_test,subject_train and load them into variables dat_x, dat_y, dat_sub

**Step 3--Assign Column names to the merged data sets**
	
	1. dat_X col(c(features[,2])), dat_y col(Activity_Id), dat_sub col(Subject_Id), Activity_Type col(Activity, Activity_Id). 
	2. Remove the "()" charater from features variable 

**Step 4--Merge Activity_Type with dat_y using the Activity_Id column name**

**Step 5--Merge all the data sets together into a single Data Frame**

**Step 6--Extract only the columns with Mean and Std**

	1.toupper is used to extract all the mean columns (they follow a mix of cases), std are not following a specific case

**Step 7--Aggregate on Activity, Subject and generate a csv file**
