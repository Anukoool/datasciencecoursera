#Code Book Describing runAnalysis.R

## Working with Data

#### Description of run_analysis.R

Assume that all the files have been downloaded into the working directory of R from (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

**Step 1 Read all the data sets into R**

	1. Read activity_lables.txt into variable Activity_Type
	2. Read subject_test.txt into variable subject_test
	3. Read X_test.txt into variable x_test
	4. Read y_test.txt into variable y_test
	5. Read subject_train.txt into variable subject_train
	6. Read X_train.txt into variable x_train
	7. Read y_train.txt into variable y_train
	8. Read features.txt into variable features
	
**Step 2 Merge the Traning and Test data sets**

	1. dat_x for X training and test data sets
	2. dat_y for Y training and test data sets
	3. dat_sub for subject training and test data sets
	
**Step 3 Assign Column Names to the data sets created in step 2**

	1. Assign features as column names to dat_x, remove character "()"
	2. Assign Activity_Id as column name to dat_y
	3. Assign Subject_Id as column name to dat_sub
	4. Assign Activity_Id, Activity as column names to Activity_Type
	
**Step 4 Merge Activity_Type and dat_y**

	1. Merge Activity_Type and dat_y using Activity_Id column and store the results in a new variable dat_act
	
**Step 5 Column merge dat_x, dat_act, dat_sub into a dataframe dat_x, this data frame contains, 10299 rows and 564 columns**

**Step 6 Extract only the column names containing readings on mean, std along with Activity, Subject_Id**

	1. Some columns show mean as either mean or Mean, use toupper to ensure all the cases are picked store the results in a variable called result_set

**Step 7 Aggregate on Activity, Subject and generate a .csv

	1. Select only the columns on mean and std
	2. Use Chain commands
	3. Aggregate on Activity and Subject_Id
	4. Sort by Activity
	5. Spit out result.txt
	
###Columns result.txt

*	Activity
*	Subject_Id
*	tBodyAcc-mean-X
*	tBodyAcc-mean-Y
*	tBodyAcc-mean-Z
*	tGravityAcc-mean-X
*	tGravityAcc-mean-Y
*	tGravityAcc-mean-Z
*	tBodyAccJerk-mean-X
*	tBodyAccJerk-mean-Y
*	tBodyAccJerk-mean-Z
*	tBodyGyro-mean-X
*	tBodyGyro-mean-Y
*	tBodyGyro-mean-Z
*	tBodyGyroJerk-mean-X
*	tBodyGyroJerk-mean-Y
*	tBodyGyroJerk-mean-Z
*	tBodyAccMag-mean
*	tGravityAccMag-mean
*	tBodyAccJerkMag-mean
*	tBodyGyroMag-mean
*	tBodyGyroJerkMag-mean
*	fBodyAcc-mean-X
*	fBodyAcc-mean-Y
*	fBodyAcc-mean-Z
*	fBodyAcc-meanFreq-X
*	fBodyAcc-meanFreq-Y
*	fBodyAcc-meanFreq-Z
*	fBodyAccJerk-mean-X
*	fBodyAccJerk-mean-Y
*	fBodyAccJerk-mean-Z
*	fBodyAccJerk-meanFreq-X
*	fBodyAccJerk-meanFreq-Y
*	fBodyAccJerk-meanFreq-Z
*	fBodyGyro-mean-X
*	fBodyGyro-mean-Y
*	fBodyGyro-mean-Z
*	fBodyGyro-meanFreq-X
*	fBodyGyro-meanFreq-Y
*	fBodyGyro-meanFreq-Z
*	fBodyAccMag-mean
*	fBodyAccMag-meanFreq
*	fBodyBodyAccJerkMag-mean
*	fBodyBodyAccJerkMag-meanFreq
*	fBodyBodyGyroMag-mean
*	fBodyBodyGyroMag-meanFreq
*	fBodyBodyGyroJerkMag-mean
*	fBodyBodyGyroJerkMag-meanFreq
*	angletBodyAccMean, gravity
*	angletBodyAccJerkMean, gravityMean
*	angletBodyGyroMean, gravityMean
*	angletBodyGyroJerkMean, gravityMean
*	angleX, gravityMean
*	angleY, gravityMean
*	angleZ, gravityMean
*	tBodyAcc-std-X
*	tBodyAcc-std-Y
*	tBodyAcc-std-Z
*	tGravityAcc-std-X
*	tGravityAcc-std-Y
*	tGravityAcc-std-Z
*	tBodyAccJerk-std-X
*	tBodyAccJerk-std-Y
*	tBodyAccJerk-std-Z
*	tBodyGyro-std-X
*	tBodyGyro-std-Y
*	tBodyGyro-std-Z
*	tBodyGyroJerk-std-X
*	tBodyGyroJerk-std-Y
*	tBodyGyroJerk-std-Z
*	tBodyAccMag-std
*	tGravityAccMag-std
*	tBodyAccJerkMag-std
*	tBodyGyroMag-std
*	tBodyGyroJerkMag-std
*	fBodyAcc-std-X
*	fBodyAcc-std-Y
*	fBodyAcc-std-Z
*	fBodyAccJerk-std-X
*	fBodyAccJerk-std-Y
*	fBodyAccJerk-std-Z
*	fBodyGyro-std-X
*	fBodyGyro-std-Y
*	fBodyGyro-std-Z
*	fBodyAccMag-std
*	fBodyBodyAccJerkMag-std
*	fBodyBodyGyroMag-std
*	fBodyBodyGyroJerkMag-std


