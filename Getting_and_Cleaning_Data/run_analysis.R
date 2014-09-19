#Step 1 -- Read all the data sets into R
# Read activity lable and load the content into a variable
Activity_Type <- read.table("activity_labels.txt", header = FALSE, sep = "")

#Read test data and load the contents into variables
subject_test <- read.table("subject_test.txt", header = FALSE, sep = "")
x_test <- read.table("X_test.txt", header = FALSE, sep = "")
y_test <- read.table("y_test.txt", header = FALSE, sep = "")

#Read training data and load the contents into variables
subject_train <- read.table("subject_train.txt", header = FALSE, sep = "")
x_train <- read.table("X_train.txt", header = FALSE, sep = "")
y_train <- read.table("y_train.txt", header = FALSE, sep = "")

#Read features data and load the contents into a variable
features <- read.table("features.txt", header = FALSE, sep = "")

#Step 2 -- Merge all the three DataSets, X Test, X Train and Y Test, Y Train and Subject Test, Subject Train

dat_x <- rbind(x_test, x_train)
dat_y <- rbind(y_test, y_train)
dat_sub <- rbind(subject_test, subject_train)


#Step 3 -- Assign Lables to the merged data sets, dat_X, dat_y, dat_sub, Activity_Type

colnames(dat_x)	<- t(gsub("\\(|\\)", "", features[,2]))
colnames(dat_y)	<- "Activity_Id"
colnames(dat_sub) <- "Subject_Id"
colnames(Activity_Type) <- c("Activity_Id", "Activity")

#Step 4 -- Merge Activity with Y Data set dat_y

dat_act <- merge(Activity_Type, dat_y, by = "Activity_Id")

#Step 5 -- Merge all the data sets together

dat_x <- cbind(dat_x, dat_act, dat_sub)

#Step 6 Extract only the measurement on mean, std, Activity, Subject_Id

#Step 6 -- Extract only the columns with Mean and Std
           # To Upper is used as mean, std are not following a specific case

result_set <-  select (dat_x, contains(toupper("MEAN")), contains(toupper("STD")),Activity, Subject_Id) 

#Step 7 -- Aggregate on Activity, Subject and generate a csv file
result_set[c(1:86)] %>%
        aggregate(list(Activity = result_set$Activity, Subject_Id =result_set$Subject_Id), mean) %>%
        arrange(desc(Activity)) %>%
        write.csv(file='result.txt', row.names=FALSE)