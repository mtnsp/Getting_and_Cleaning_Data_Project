## This is the code book for the tidy data set.
### About the raw data
The raw data were collected from the experiments conducted by Smartlab - Non Linear Complex Systems Laboratory. A group of 30 volunteers participated in the experiments, in which each of them performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. The 3-axial raw signals from the accelerometer and gyroscope were captured and pre-processed. Via separation, derivation in time, magnitude calculation, and FFT application, 17 kinds of signals (e.g., tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ) were generated, and a set of variables (such as mean, standard deviation, median absolute deviation, etc.) were estimated on these signals. Therefore, a set of 561 features were created for each record. The corresponding subject and activity were also recorded. Each record corresponds to a window of 128 readings from a signal, therefore, for each subject and each activity, there are multiple sets of features recorded. Thus, we need to do transformations to create a tidy data set. 

### About the transformations
The volunteers were randomly divided into a training group (70%) and a test group (30%), and the raw data were therefore separated into two sets. So, we first needed to merge them together. Secondly, 561 features have too much information, so we extracted only the measurements related to mean and standard deviation. Then, we used descriptive activity names instead of activity code to denote the activities in the data set, and labeled the features with descriptive variable names. Finally, we reshaped the data set, so that a tidy data set was created with the average of each variable for each subject and each activity.

### Dictionary for the tidy data set
1. subject: numeric(2). It represents 30 volunteers.  
  Values: 1-30. 

2. activity: varchar(18). It lists the activity.  
  Values are:
  - LAYING   
  - SITTING 
  - STANDING 
  - WALKING 
  - WALKING_DOWNSTAIRS 
  - WALKING_UPSTAIRS
    
3. mean_tBodyAcc_mean_X: numeric. It denotes the average value of the average readings of the body acceleration signal at X axis from time domain in standard gravity units 'g'.  
  Values: 0.2216 ... 0.3015.  
  
4. mean_tBodyAcc_mean_Y: numeric. It denotes the average value of the average readings of the body acceleration signal at Y axis from time domain in standard gravity units 'g'.  
  Values: -0.040514 ... -0.001308.
  
5. mean_tBodyAcc_mean_Z: numeric. It denotes the average value of the average readings of the body acceleration signal at Z axis from time domain in standard gravity units 'g'.  
  Values: -0.15251 ... -0.07538. 

6. mean_tBodyAcc_std_X: numeric. It denotes the average value of the standard deviations of the body acceleration signal readings at X axis from time domain.     
  Values: -0.9961 ... 0.6269. 
  
7. mean_tBodyAcc_std_Y: numeric. It denotes the average value of the standard deviations of the body acceleration signal readings at Y axis from time domain.  
  Values: -0.99024 ... 0.61694. 
   
8. mean_tBodyAcc_std_Z: numeric. It denotes the average value of the standard deviations of the body acceleration signal readings at Z axis from time domain.  
  Values: -0.9877 ... 0.6090. 
   
9. mean_tGravityAcc_mean_X: numeric. It denotes the average value of the average readings of the gravity acceleration signal at X axis from time domain in standard gravity units 'g'.  
  Values: -0.6800 ... 0.9745. 
   
10. mean_tGravityAcc_mean_Y: numeric. It denotes the average value of the average readings of the gravity acceleration signal at Y axis from time domain in standard gravity units 'g'.  
  Values: -0.47989 ... 0.95659. 
   
11. mean_tGravityAcc_mean_Z: numeric. It denotes the average value of the average readings of the gravity acceleration signal at Z axis from time domain in standard gravity units 'g'.  
  Values: -0.49509 ... 0.95787. 
   
12. mean_tGravityAcc_std_X: numeric. It denotes the average value of the standard deviations of the gravity acceleration signal readings at X axis from time domain.  
  Values: -0.9968 ... -0.8296. 
   
13. mean_tGravityAcc_std_Y: numeric. It denotes the average value of the standard deviations of the gravity acceleration signal readings at Y axis from time domain.  
  Values: -0.9942 ... -0.6436. 
   
14. mean_tGravityAcc_std_Z: numeric. It denotes the average value of the standard deviations of the gravity acceleration signal readings at Z axis from time domain.  
  Values: -0.9910 ... -0.6102. 
   
15. mean_tBodyAccJerk_mean_X: numeric. It denotes the average value of the average readings of the body linear acceleration Jerk signal at X axis from time domain in standard gravity units 'g'.  
  Values: 0.04269 ... 0.13019. 
   
16. mean_tBodyAccJerk_mean_Y: numeric. It denotes the average value of the average readings of the body linear acceleration Jerk signal at Y axis from time domain in standard gravity units 'g'.  
  Values: -0.0386872 ... 0.0568186. 
   
17. mean_tBodyAccJerk_mean_Z: numeric. It denotes the average value of the average readings of the body linear acceleration Jerk signal at Z axis from time domain in standard gravity units 'g'.  
  Values: -0.067458 ... 0.038053. 
   
18. mean_tBodyAccJerk_std_X: numeric. It denotes the average value of the standard deviations of the body linear acceleration Jerk signal readings at X axis from time domain.  
  Values: -0.9946 ... 0.5443. 
   
19. mean_tBodyAccJerk_std_Y: numeric. It denotes the average value of the standard deviations of the body linear acceleration Jerk signal readings at Y axis from time domain.  
  Values: -0.9895 ... 0.3553. 
   
20. mean_tBodyAccJerk_std_Z: numeric. It denotes the average value of the standard deviations of the body linear acceleration Jerk signal readings at Z axis from time domain.  
  Values: -0.99329 ... 0.03102. 
   
21. mean_tBodyGyro_mean_X: numeric. It denotes the average value of the average readings of the angular velocity signal at X axis from time domain in units of radians/second.  
  Values: -0.20578 ... 0.19270. 
   
22. mean_tBodyGyro_mean_Y: numeric. It denotes the average value of the average readings of the angular velocity signal at Y axis from time domain in units of radians/second .  
  Values: -0.20421 ... 0.02747. 
   
23. mean_tBodyGyro_mean_Z: numeric. It denotes the average value of the average readings of the angular velocity signal at Z axis from time domain in units of radians/second.  
  Values: -0.07245 ... 0.17910. 
   
24. mean_tBodyGyro_std_X: numeric. It denotes the average value of the standard deviations of the angular velocity signal readings at X axis from time domain.  
  Values: -0.9943 ... 0.2677. 
  
25. mean_tBodyGyro_std_Y: numeric. It denotes the average value of the standard deviations of the angular velocity signal readings at Y axis from time domain.  
  Values: -0.9942 ... 0.4765. 
   
26. mean_tBodyGyro_std_Z: numeric. It denotes the average value of the standard deviations of the angular velocity signal readings at Z axis from time domain.  
  Values: -0.9855 ... 0.5649. 
   
27. mean_tBodyGyroJerk_mean_X: numeric. It denotes the average value of the average readings of the angular velocity Jerk signal at X axis from time domain in units of radians/second.  
  Values: -0.15721 ... -0.02209. 
   
28. mean_tBodyGyroJerk_mean_Y: numeric. It denotes the average value of the average readings of the angular velocity Jerk signal at Y axis from time domain in units of radians/second.  
  Values: -0.07681 ... -0.01320. 
   
29. mean_tBodyGyroJerk_mean_Z: numeric. It denotes the average value of the average readings of the angular velocity Jerk signal at Z axis from time domain in units of radians/second.  
  Values: -0.092500 ... -0.006941. 
   
30. mean_tBodyGyroJerk_std_X: numeric. It denotes the average value of the standard deviations of the angular velocity Jerk signal readings at X axis from time domain.  
  Values: -0.9965 ... 0.1791. 
   
31. mean_tBodyGyroJerk_std_Y: numeric. It denotes the average value of the standard deviations of the angular velocity Jerk signal readings at Y axis from time domain.  
  Values: -0.9971 ... 0.2959. 
   
32. mean_tBodyGyroJerk_std_Z: numeric. It denotes the average value of the standard deviations of the angular velocity Jerk signal readings at Z axis from time domain.  
  Values: -0.9954 ... 0.1932. 
   
33. mean_tBodyAccMag_mean: numeric. It denotes the average value of the average magnitudes of the body acceleration signal from time domain.  
  Values: -0.9865 ... 0.6446. 
   
34. mean_tBodyAccMag_std: numeric. It denotes the average value of the standard deviations of the body acceleration signal magnitude from time domain.  
  Values: -0.9865 ... 0.4284. 
   
35. mean_tGravityAccMag_mean: numeric. It denotes the average value of the average magnitudes of the gravity acceleration signal from time domain.  
  Values: -0.9865 ... 0.6446. 
   
36. mean_tGravityAccMag_std: numeric. It denotes the average value of the standard deviations of the gravity acceleration signal magnitude from time domain.  
  Values: -0.9865 ... 0.4284. 
   
37. mean_tBodyAccJerkMag_mean: numeric. It denotes the average value of the average magnitudes of the body acceleration Jerk signal from time domain.  
  Values: -0.9928 ... 0.4345. 
   
38. mean_tBodyAccJerkMag_std: numeric. It denotes the average value of the standard deviations of the body acceleration Jerk signal magnitude from time domain.  
  Values: -0.9946 ... 0.4506. 
   
39. mean_tBodyGyroMag_mean: numeric. It denotes the average value of the average magnitudes of the angular velocity signal from time domain.  
  Values: -0.9807 ... 0.4180. 
   
40. mean_tBodyGyroMag_std: numeric. It denotes the average value of the standard deviations of the angular velocity signal magnitude from time domain.  
  Values: -0.9814 ... 0.3000. 
   
41. mean_tBodyGyroJerkMag_mean: numeric. It denotes the average value of the average magnitudes of the angular velocity Jerk signal from time domain.  
  Values: -0.99732 ... 0.08758. 
   
42. mean_tBodyGyroJerkMag_std: numeric. It denotes the average value of the standard deviations of the angular velocity Jerk signal magnitude from time domain.  
  Values: -0.9977 ... 0.2502. 
   
43. mean_fBodyAcc_mean_X: numeric. It denotes the average value of the average readings of the body acceleration signal at X axis from frequency domain.  
  Values: -0.9952 ... 0.5370. 
   
44. mean_fBodyAcc_mean_Y: numeric. It denotes the average value of the average readings of the body acceleration signal at Y axis from frequency domain.  
  Values: -0.98903 ... 0.52419. 
   
45. mean_fBodyAcc_mean_Z: numeric. It denotes the average value of the average readings of the body acceleration signal at Z axis from frequency domain.  
  Values: -0.9895 ... 0.2807. 
   
46. mean_fBodyAcc_std_X: numeric. It denotes the average value of the standard deviations of the body acceleration signal readings at X axis from frequency domain.  
  Values: -0.9966 ... 0.6585. 
   
47. mean_fBodyAcc_std_Y: numeric. It denotes the average value of the standard deviations of the body acceleration signal readings at Y axis from frequency domain.  
  Values: -0.99068 ... 0.56019. 
   
48. mean_fBodyAcc_std_Z: numeric. It denotes the average value of the standard deviations of the body acceleration signal readings at Z axis from frequency domain.  
  Values: -0.9872 ... 0.6871. 
   
49. mean_fBodyAccJerk_mean_X: numeric. It denotes the average value of the average readings of the body linear acceleration Jerk signal at X axis from frequency domain.  
  Values: -0.9946 ... 0.4743. 
   
50. mean_fBodyAccJerk_mean_Y: numeric. It denotes the average value of the average readings of the body linear acceleration Jerk signal at Y axis from frequency domain.  
  Values: -0.9894 ... 0.2767. 
   
51. mean_fBodyAccJerk_mean_Z: numeric. It denotes the average value of the average readings of the body linear acceleration Jerk signal at Z axis from frequency domain.  
  Values: -0.9920 ... 0.1578. 
   
52. mean_fBodyAccJerk_std_X: numeric. It denotes the average value of the standard deviations of the body linear acceleration Jerk signal readings at X axis from frequency domain.  
  Values: -0.9951 ... 0.4768. 
   
53. mean_fBodyAccJerk_std_Y: numeric. It denotes the average value of the standard deviations of the body linear acceleration Jerk signal readings at Y axis from frequency domain.  
  Values: -0.9905 ... 0.3498. 
   
54. mean_fBodyAccJerk_std_Z: numeric. It denotes the average value of the standard deviations of the body linear acceleration Jerk signal readings at Z axis from frequency domain.  
  Values: -0.993108 ... -0.006236. 
   
55. mean_fBodyGyro_mean_X: numeric. It denotes the average value of the average readings of the angular velocity signal at X axis from frequency domain.  
  Values: -0.9931 ... 0.4750. 
   
56. mean_fBodyGyro_mean_Y: numeric. It denotes the average value of the average readings of the angular velocity signal at Y axis from frequency domain.  
  Values: -0.9940 ... 0.3288. 
   
57. mean_fBodyGyro_mean_Z: numeric. It denotes the average value of the average readings of the angular velocity signal at Z axis from frequency domain.  
  Values: -0.9860 ... 0.4924. 
   
58. mean_fBodyGyro_std_X: numeric. It denotes the average value of the standard deviations of the angular velocity signal readings at X axis from frequency domain.  
  Values: -0.9947 ... 0.1966. 
   
59. mean_fBodyGyro_std_Y: numeric. It denotes the average value of the standard deviations of the angular velocity signal readings at Y axis from frequency domain.  
  Values: -0.9944 ... 0.6462. 
  
60. mean_fBodyGyro_std_Z: numeric. It denotes the average value of the standard deviations of the angular velocity signal readings at Z axis from frequency domain.  
  Values: -0.9867 ... 0.5225. 
   
61. mean_fBodyAccMag_mean: numeric. It denotes the average value of the average magnitudes of the body acceleration signal from frequency domain.  
  Values: -0.9868 ... 0.5866. 
   
62. mean_fBodyAccMag_std: numeric. It denotes the average value of the standard deviations of the body acceleration signal magnitude from frequency domain.  
  Values: -0.9876 ... 0.1787. 
   
63. mean_fBodyBodyAccJerkMag_mean: numeric. It denotes the average value of the average magnitudes of the body acceleration Jerk signal from frequency domain.  
  Values: -0.9940 ... 0.5384. 
   
64. mean_fBodyBodyAccJerkMag_std: numeric. It denotes the average value of the standard deviations of the body acceleration Jerk signal magnitude from frequency domain.  
  Values: -0.9944 ... 0.3163. 
   
65. mean_fBodyBodyGyroMag_mean: numeric. It denotes the average value of the average magnitudes of the angular velocity signal from frequency domain.  
  Values: -0.9865 ... 0.2040. 
   
66. mean_fBodyBodyGyroMag_std: numeric. It denotes the average value of the standard deviations of the angular velocity signal magnitude from frequency domain.  
  Values: -0.9815 ... 0.2367. 
   
67. mean_fBodyBodyGyroJerkMag_mean: numeric. It denotes the average value of the average magnitudes of the angular velocity Jerk signal from frequency domain.  
  Values: -0.9976 ... 0.1466. 
   
68. mean_fBodyBodyGyroJerkMag_std: numeric. It denotes the average value of the standard deviations of the angular velocity Jerk signal magnitude from frequency domain.  
  Values: -0.9976 ... 0.2878. 
   

