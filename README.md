#README
This file describe the script ('run_analysis.R') used to obtain tidy data from the Human Activity Recognition Using Smartphones Data Set (UCI HAR).  More information on the data set can be found in CodeBook.md.
##run_analysis.R
<p> The following libraries are required to be installed on the local machine </p>
<ul>
<li><code>data.table</code></li>
</ul>
<p>'run_analysis.R' defines a function </p>
<code>tidyData <- function()</code>
<p>Source data is to be extracted in the working directory; this is where tidyData function will search.  The function assumes that the folders are layed out in the exact same way as in the source zip file.</p>
<p>The creation of the tidy data set takes place in five (5) steps within the function:
<ol>
<li>The features ('features.txt') are loaded and more descriptive names are created.  From this data, a data table is created (<code>data.features.filtered</code>) which contains a variable of any feature names containing 'mean' or 'std' and a variable of the column id; the activity labels ('activity_labels.txt') are loaded</li>
<li>Test data is loaded ('X_test.txt', 'subject_test.txt', 'y_test.txt') and data columns bound(<code>cbind</code>).  Only columns in <code>data.features.filtered</code> are kept </li>
<li>Training data is loaded ('X_train.txt', 'subject_train.txt', 'y_train.txt') and data columns bound(<code>cbind</code>).  Only columns in <code>data.features.filtered</code> are kept</li>
<li>Test and Training data is merged (<code>rbind</code>)</li>
<li>tidy.txt is exported which contains the average of each variable for each activity and each subject (<code>write.table(data,"tidy.txt",sep = '\t', row.name=FALSE)</code>)</li>
</ol>
