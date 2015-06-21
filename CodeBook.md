The data set comes from an experiment carried out with a group of 30 volunteers, each of whom performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Using a sensor-embedded smartphone worn on the waist, each subject's data (below) were measured.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The features selected come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
The acceleration data was further separated into body and gravity components (tBodyAcc-XYZ and tGravityAcc-XYZ). 
For both acceleration and gyroscope data, further derivations were done to obtain Jerk signals and magnitudes. 
Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing variables in the frequency domain (variables prefixed by 'f'). 

The units for variables measured by the accelerometer (linear acceleration) is standard gravity units, 'g' (9.81ms-2). 
The units for variables measured by the gyroscope (angular velocity) is radians per second.
These variables were then normalized, such that all values are bounded within [-1,1] (no units).

Mean and standard deviation values for each observation were provided by the original data set. The script takes as input these individual (per-observation) values, and for each unique subject-activity combination, calculates the average (mean) value for each (mean and standard deviation) variable, generating a summarized form of the original data.


Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
