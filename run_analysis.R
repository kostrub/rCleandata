PATH <- dirname(sys.frame(1)$ofile)
setwd(file.path(PATH, "UCI HAR Dataset"))
## Read data from files
test_features   <- read.table("test//X_test.txt")
test_outcomes   <- read.table("test//y_test.txt")
test_subjects   <- read.table("test//subject_test.txt",)
train_features  <- read.table("train//X_train.txt")
train_outcomes  <- read.table("train//y_train.txt")
train_subjects  <- read.table("train//subject_train.txt",)
activity_labels <- as.matrix(read.table("activity_labels.txt")) 
feature_names   <- as.list(as.character(read.table("./features.txt")[[2]]))
##  1. Merge the training and the test sets to create one data set.
test    <- cbind(test_subjects,test_features,test_outcomes)
train   <- cbind(train_subjects,train_features,train_outcomes)
dataset <- rbind(train,test)

##  4.Appropriately labels the data set with descriptive activity names. 

names(dataset) <- c("Subject",feature_names,"Outcomes")
##  2. Extract only the measurements on the mean and standard 
##     deviation for each measurement. 

dataset <- dataset[grep("-mean\\(|-std\\(|Outcomes|Sub.+",names(dataset))]
##  3. Use descriptive activity names to name the activities 
##     in the data set
apply(activity_labels,1,function(x){
    dataset$Outcomes[dataset$Outcomes==x[1]] <<- x[2] 

})

tidy_data<-matrix(ncol=length(dataset),row.names<-NA)
subjects <- sort(unique(dataset$Subject))
##  5. Creates a second, independent tidy data set with the average 
##     of each variable for each activity and each subject.
for(activity in activity_labels[,2]){
    for (subj in subjects){
        step_data<-dataset[dataset$Subject==subj & dataset$Outcomes==activity,]
        bind_data<-c((colMeans(step_data[2:length(step_data)-1])),activity)
        tidy_data<-rbind(tidy_data,bind_data)
    }        
}

## Some final cleanup
tidy_data<-as.data.frame(tidy_data)
tidy_data<-tidy_data[2:dim(tidy_data)[1],]
names(tidy_data)<-names(dataset)
rownames(tidy_data) <- NULL

write.table(tidy_data,"tidy_data.txt",sep="\t",row.names=FALSE)
