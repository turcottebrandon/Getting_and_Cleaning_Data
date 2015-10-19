tidyData <- function(){
#####################         
#Description
#####################
#
#by:  Brandon Turcotte
#
# tidyData function will load a Samsung UCI HAR Daraset located in the working directory and convert
# it to a tidy data format.
#
        
  library(data.table)

        #load features
         data.features <- data.table(read.table(".//UCI HAR Dataset//features.txt", stringsAsFactors=FALSE))
        #select only features of 'mean' or 'std' data.  V1 = column#, V2 = column label
         data.features.filtered <- data.features[grepl("mean",data.features$V2) | grepl("std",data.features$V2)]
         data.features.descrip <- data.features.filtered[,V2]
                 #add more detail to base feature names
                         data.features.descrip <- gsub("tBody", "Time.Body", data.features.descrip)
                         data.features.descrip <- gsub("fBody", "FFT.Body", data.features.descrip)
                         
                         data.features.descrip <- gsub("fGravity", "FFT.Gravity", data.features.descrip)
                         data.features.descrip <- gsub("tGravity", "Time.Gravity", data.features.descrip)
                         
                         data.features.descrip <- gsub("\\-mean\\(\\)\\-", ".Mean.", data.features.descrip)
                         data.features.descrip <- gsub("\\-mean\\(\\)", ".Mean", data.features.descrip)
                         data.features.descrip <- gsub("\\-mean()", ".Mean", data.features.descrip)
                         
                         data.features.descrip <- gsub("\\-std\\(\\)\\-", ".Std.", data.features.descrip)
                         data.features.descrip <- gsub("\\-std\\(\\)", ".Std", data.features.descrip)
                         data.features.descrip <- gsub("\\-std()", ".Std", data.features.descrip)
                         
                         data.features.descrip <- gsub("\\()-", ".", data.features.descrip)
         
        #load activities
         activities.names <- read.table(".//UCI HAR Dataset//activity_labels.txt", stringsAsFactors=FALSE)
                activities.index <- activities.names[,1]
                activities.values <- activities.names[,2]

#####################         
#import training data
#####################
         train.movement.data <- setNames(fread(".//UCI HAR Dataset//train//X_train.txt", select = data.features.filtered[,V1]),data.features.descrip)  #data.features.filtered[,V2]
         train.subject.data <- setNames(fread(".//UCI HAR Dataset//train//subject_train.txt"),c('subject'))
         train.activity.data.id <- setNames(fread(".//UCI HAR Dataset//train//y_train.txt"),c('activity.id'))
         activity <- activities.values[match(train.activity.data.id$activity.id,activities.index )]
        
         #combine separate data sets
         train.data <- cbind(train.subject.data, activity, train.movement.data)
                #clear unused data
                 train.movement.data <-NULL; train.subject.data <- NULL; activity <- NULL
          
#####################         
#import test data
#####################
         test.movement.data <- setNames(fread(".//UCI HAR Dataset//test//X_test.txt", select = data.features.filtered[,V1]),data.features.descrip)
         test.subject.data <- setNames(fread(".//UCI HAR Dataset//test//subject_test.txt"),c('subject'))
         test.activity.data.id <- setNames(fread(".//UCI HAR Dataset//test//y_test.txt"),c('activity.id'))
         activity <- setNames(activities.values[match(test.activity.data.id$activity.id,activities.index )],c('activity'))
         
        #combine separate data sets
         test.data <- cbind(test.subject.data, activity, test.movement.data)
               #clear unused data
                test.movement.data <-NULL; test.subject.data <- NULL; activity <- NULL
                  
#####################         
#merge training and test data
#####################
         combined.data <- rbind(train.data,test.data)
                #sort the data by subject and activity
                tidy <<- combined.data[order(subject, activity),] 
        
#####################         
#tidy data set with the average of each variable for each activity and each subject
#####################
                #remove subject and activity in order to take mean of reamining data
                tidy.sub <- subset( tidy, select = -c(activity, subject) )
                tidy.mean <- aggregate(tidy.sub, by=list(Activity = tidy$activity, ubject=tidy$subject), mean)
                write.table(tidy.mean, "tidy.txt",sep = '\t', row.name=FALSE)        
}
