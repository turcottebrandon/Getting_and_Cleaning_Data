#CodeBook
##Source Data
<ul>
<li>Original src: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Data.</a></li>
<li>Download date: 2015-10-10</li>

<li>A full description is available at: <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">UCI Machine Learning Laboratory</a></li>
</ul>
##Data Set Information
<i>*note:  details from UCI Machine Learning Laboratory link above.</i>
<p>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. </p>

<p>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.</p>

<p>For each record in the original dataset it is provided:</p>
<ul>
<li>Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.</li>
<li>Triaxial Angular velocity from the gyroscope.</li>
<li>A 561-feature vector with time and frequency domain variables.</li>
<li>Its activity label.</li>
<li>An identifier of the subject who carried out the experiment.</li>
</ul>

<p>The dataset includes the following files:</p>
<ul>
<li>'README.txt'</li>
<li>'features_info.txt': Shows information about the variables used on the feature vector.</li>
<li>'features.txt': List of all features.</li>
<li>'activity_labels.txt': Links the class labels with their activity name.</li>
<li>'train/X_train.txt': Training set.</li>
<li>'train/y_train.txt': Training labels.</li>
<li>'test/X_test.txt': Test set.</li>
<li>'test/y_test.txt': Test labels.</li>
</ul>
<p>The following files are available for the train and test data. Their descriptions are equivalent. </p>
<ul>
<li>'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.</li> 
<li>'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. </li>
<li>'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. </li>
<li>'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. </li>
</ul>
<p>Notes: </p>
<ul>
<li>Features are normalized and bounded within [-1,1].</li>
<li>Each feature vector is a row on the text file.</li>
</ul>

##Features
<p>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. </p>

<p>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).</p>

<p>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). <p>

<p>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.</p>
<ul>
<li>tBodyAcc-XYZ</li>
<li>tGravityAcc-XYZ</li>
<li>tBodyAccJerk-XYZ</li>
<li>tBodyGyro-XYZ</li>
<li>tBodyGyroJerk-XYZ</li>
<li>tBodyAccMag</li>
<li>tGravityAccMag</li>
<li>tBodyAccJerkMag</li>
<li>tBodyGyroMag</li>
<li>tBodyGyroJerkMag</li>
<li>fBodyAcc-XYZ</li>
<li>fBodyAccJerk-XYZ</li>
<li>fBodyGyro-XYZ</li>
<li>fBodyAccMag</li>
<li>fBodyAccJerkMag</li>
<li>fBodyGyroMag</li>
<li>fBodyGyroJerkMag</li>
</ul>
<p>The set of variables that were estimated from these signals are: </p>
<ul>
<li>mean(): Mean value</li>
<li>std(): Standard deviation</li>
</ul>
<p>Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:</p>
<ul>
<li>gravityMean</li>
<li>tBodyAccMean</li>
<li>tBodyAccJerkMean</li>
<li>tBodyGyroMean</li>
<li>tBodyGyroJerkMean</li>
</ul>

##Transformation
<p>The following steps were performed on the data:</p>
<ul>
<li>The training and the test were merged to create one data set.</li>
<li>Only the measurements on the mean and standard deviation for each measurement were kept. </li>
<li>Descriptive activity names were used to name the activities in the data set</li>
<li>Descriptive variable names were used. </li>
<li>A tidy data set with the average of each variable for each activity and each subject was created.</li>
</ul>
<p>Variable names:
<ul>
<li>'Subject' for subject data</li>
<li>'Activity' for activity data</li>
<li>'t' prefix changed to 'Time.' prefix</li>
<li>'f' prefix changed to 'FFT.' prefix</li>
<li>'-mean' changed to '.Mean'</li>
<li>'-std' changed to '.Std'</li>
</ul>
##References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
