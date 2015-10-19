#CodeBook
##Source Data
<ul>
<li>Original src: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Data.</a></li>
<li>Download date: 2015-10-10</li>

<li>A full description is available at: <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">UCI Machine Learning Laboratory</a></li>
</ul>
##Original Src Data Set Information
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

##

##References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
