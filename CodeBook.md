# Code book

# Raw data
x_test.txt, y_test.txt, subject_test.txt in test file and x_train.txt, y_train.txt, subject_train.txt in train file are the sources of raw data.

# Data transform
1. Merges the raw data sets to create one data set and rename the column names.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Variables in the output file after running run_analysis.R script.
1. Subject: Identifier of the subject who carried out the experiment.
2. Activity: Experimental activities(Walking, Walking up, Walking down, Sitting, Standing, Laying)
3. tBodyAcc.mean...X
4. tBodyAcc.mean...Y
5. tBodyAcc.mean...Z
6. tBodyAcc.std...X
7. tBodyAcc.std...Y
8. tBodyAcc.std...Z
9. tGravityAcc.mean...X
10. tGravityAcc.mean...Y
11. tGravityAcc.mean...Z
12. tGravityAcc.std...X
13. tGravityAcc.std...Y
14. tGravityAcc.std...Z
15. tBodyAccJerk.mean...X
16. tBodyAccJerk.mean...Y
17. tBodyAccJerk.mean...Z
18. tBodyAccJerk.std...X
19. tBodyAccJerk.std...Y
20. tBodyAccJerk.std...Z
21. tBodyGyro.mean...X
22. tBodyGyro.mean...Y
23. tBodyGyro.mean...Z
24. tBodyGyro.std...X
25. tBodyGyro.std...Y
26. tBodyGyro.std...Z
27. tBodyGyroJerk.mean...X
28. tBodyGyroJerk.mean...Y
29. tBodyGyroJerk.mean...Z
30. tBodyGyroJerk.std...X
31. tBodyGyroJerk.std...Y
32. tBodyGyroJerk.std...Z
33. tBodyAccMag.mean..
34. tBodyAccMag.std..
35. tGravityAccMag.mean..
36. tGravityAccMag.std..
37. tBodyAccJerkMag.mean..
38. tBodyAccJerkMag.std..
39. tBodyGyroMag.mean..
40. tBodyGyroMag.std..
41. tBodyGyroJerkMag.mean..
42. tBodyGyroJerkMag.std..
43. fBodyAcc.mean...X
44. fBodyAcc.mean...Y
45. fBodyAcc.mean...Z
46. fBodyAcc.std...X
47. fBodyAcc.std...Y
48. fBodyAcc.std...Z
49. fBodyAcc.meanFreq...X
50. fBodyAcc.meanFreq...Y
51. fBodyAcc.meanFreq...Z
52. fBodyAccJerk.mean...X
53. fBodyAccJerk.mean...Y
54. fBodyAccJerk.mean...Z
55. fBodyAccJerk.std...X
56. fBodyAccJerk.std...Y
57. fBodyAccJerk.std...Z
58. fBodyAccJerk.meanFreq...X
59. fBodyAccJerk.meanFreq...Y
60. fBodyAccJerk.meanFreq...Z
61. fBodyGyro.mean...X
62. fBodyGyro.mean...Y
63. fBodyGyro.mean...Z
64. fBodyGyro.std...X
65. fBodyGyro.std...Y
66. fBodyGyro.std...Z
67. fBodyGyro.meanFreq...X
68. fBodyGyro.meanFreq...Y
69. fBodyGyro.meanFreq...Z
70. fBodyAccMag.mean..
71. fBodyAccMag.std..
72. fBodyAccMag.meanFreq..
73. fBodyBodyAccJerkMag.mean..
74. fBodyBodyAccJerkMag.std..
75. fBodyBodyAccJerkMag.meanFreq..
76. fBodyBodyGyroMag.mean..
77. fBodyBodyGyroMag.std..
78. fBodyBodyGyroMag.meanFreq..
79. fBodyBodyGyroJerkMag.mean..
80. fBodyBodyGyroJerkMag.std..
81. fBodyBodyGyroJerkMag.meanFreq..
82. angle.tBodyAccMean.gravity.
83. angle.tBodyAccJerkMean..gravityMean.
84. angle.tBodyGyroMean.gravityMean.
85. angle.tBodyGyroJerkMean.gravityMean.
86. angle.X.gravityMean.
87. angle.Y.gravityMean.
88. angle.Z.gravityMean.

Variables 3-88 are the features selected for this database which comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The set of variables that were estimated from these signals are:   

1. mean(): Mean value
2. std(): Standard deviation
3. meanFreq(): Weighted average of the frequency components to obtain a mean frequency


