The data set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) comes from an experiment carried out with a group of 30 volunteers, each of whom performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Using a sensor-embedded smartphone worn on the waist, each subject's data (below) were measured.

The script takes as input these individual (per-observation) values, and for each unique subject-activity combination, calculates the average (mean) value for each variable, generating a summarized form of the original data.

More specifically, the script:
- imports libraries
- reads in data from individual text files (from script's working directory)
- combines training and testing sets
- sets column names using descriptive features data
- subsets data frame for columns containing "mean" and "std" substrings
- renames activity labels so that they are descriptive
- creates a tidy data set with the average of each variable, per subject-activity combination
- writes tidy data set to .txt file


Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
