# Setup some constants first
activities <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
                "SITTING", "STANDING", "LAYING")

data_dir <- "UCI HAR Dataset"
feat_file <- paste(data_dir, "features.txt", sep="/")

subject_test_file <- paste(data_dir, "test/subject_test.txt", sep="/") 
X_test_file <- paste(data_dir, "test/X_test.txt", sep="/")
y_test_file <- paste(data_dir, "test/y_test.txt", sep="/")
subject_train_file <- paste(data_dir, "train/subject_train.txt", sep="/")
X_train_file <- paste(data_dir, "train/X_train.txt", sep="/")
y_train_file <- paste(data_dir, "train/y_train.txt", sep="/")

# Load feature names and identify features to keep
feat <- read.table(feat_file, col.names=c("id", "name"))
feat_kept <- feat[grep("-mean\\()|-std\\()", feat$name), 1]

# For both sets (test and train)
# 1. Load subject info, data (X), and activity id (y)
# 2. Remove unwanted features and join with subject+activity names

# Test set
subject_test <- read.table(subject_test_file)["V1"]
colnames(subject_test) <- "subject"
X_test <- read.table(X_test_file, col.names=feat$name)
y_test <- read.table(y_test_file)$V1
activities_test <- data.frame(activities[y_test])
colnames(activities_test) <- "activity"
X_test_mean_std <- cbind(subject_test, activities_test, X_test[,feat_kept])
rm(X_test)

# Train set
subject_train <- read.table(subject_train_file)["V1"]
colnames(subject_train) <- "subject"
X_train <- read.table(X_train_file, col.names=feat$name)
y_train <- read.table(y_train_file)$V1
activities_train <- data.frame(activities[y_train])
colnames(activities_train) <- "activity"
X_train_mean_std <- cbind(subject_train, activities_train, X_train[,feat_kept])
rm(X_train)

# Combine both sets and calaculate means, grouped by subject and activity
X_mean_std <- rbind(X_test_mean_std, X_train_mean_std)
res <- aggregate(X_mean_std[3:ncol(X_mean_std)], 
                 by=X_mean_std[1:2], FUN=mean)

# Write result to text file
write.table(res, file="tidy.txt", row.name=FALSE)

