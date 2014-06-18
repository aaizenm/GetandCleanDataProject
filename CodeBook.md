CodeBook for the File Q5.txt
==============================
(The run_analysis.R Project)

The data is based on the Human Activity Recognition Using Smartphones Dataset.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled. The sensor acceleration signal, which has gravitational and body motion components, was separated using a filter into body acceleration and gravity.

The file contain 35 lines and 89 columns.

Key for the names of the columns: 
----------------------------------

avg = Average

t = to denote time

Body = Body motion

Gravity = gravitational

Acc = Acceleration

Jerk = Jerk signals

Mag = Magnitude of the signal

X, Y, Z = The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
and tGyro-XYZ

angle = Angle of the gyroscope

mean = Mean of the values

std = Standad Deviation of the values

Freq = Frequency

==============================================================================================

Name of the Column	||	Column #	||	Type	||	Values


Activity	||	1	||	Character	||	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Subject	||	2	||	Integer	||	10 12 13 18 20 24 22 23 25 26 ...

avg( tBodyAcc_mean___X )	||	3	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAcc_mean___Y )	||	4	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAcc_mean___Z )	||	5	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAcc_std___X )	||	6	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAcc_std___Y )	||	7	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAcc_std___Z )	||	8	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAcc_mean___X )	||	9	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAcc_mean___Y )	||	10	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAcc_mean___Z )	||	11	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAcc_std___X )	||	12	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAcc_std___Y )	||	13	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAcc_std___Z )	||	14	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerk_mean___X )	||	15	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerk_mean___Y )	||	16	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerk_mean___Z )	||	17	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerk_std___X )	||	18	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerk_std___Y )	||	19	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerk_std___Z )	||	20	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyro_mean___X )	||	21	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyro_mean___Y )	||	22	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyro_mean___Z )	||	23	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyro_std___X )	||	24	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyro_std___Y )	||	25	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyro_std___Z )	||	26	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerk_mean___X )	||	27	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerk_mean___Y )	||	28	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerk_mean___Z )	||	29	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerk_std___X )	||	30	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerk_std___Y )	||	31	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerk_std___Z )	||	32	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccMag_mean__ )	||	33	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccMag_std__ )	||	34	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAccMag_mean__ )	||	35	||	Numeric	||	[-0.99 to 0.99] 

avg( tGravityAccMag_std__ )	||	36	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerkMag_mean__ )	||	37	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyAccJerkMag_std__ )	||	38	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroMag_mean__ )	||	39	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroMag_std__ )	||	40	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerkMag_mean__ )	||	41	||	Numeric	||	[-0.99 to 0.99] 

avg( tBodyGyroJerkMag_std__ )	||	42	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_mean___X )	||	43	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_mean___Y )	||	44	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_mean___Z )	||	45	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_std___X )	||	46	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_std___Y )	||	47	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_std___Z )	||	48	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_meanFreq___X )	||	49	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_meanFreq___Y )	||	50	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAcc_meanFreq___Z )	||	51	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_mean___X )	||	52	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_mean___Y )	||	53	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_mean___Z )	||	54	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_std___X )	||	55	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_std___Y )	||	56	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_std___Z )	||	57	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_meanFreq___X )	||	58	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_meanFreq___Y )	||	59	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccJerk_meanFreq___Z )	||	60	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_mean___X )	||	61	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_mean___Y )	||	62	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_mean___Z )	||	63	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_std___X )	||	64	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_std___Y )	||	65	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_std___Z )	||	66	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_meanFreq___X )	||	67	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_meanFreq___Y )	||	68	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyGyro_meanFreq___Z )	||	69	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccMag_mean__ )	||	70	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccMag_std__ )	||	71	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyAccMag_meanFreq__ )	||	72	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyAccJerkMag_mean__ )	||	73	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyAccJerkMag_std__ )	||	74	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyAccJerkMag_meanFreq__ )	||	75	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyGyroMag_mean__ )	||	76	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyGyroMag_std__ )	||	77	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyGyroMag_meanFreq__ )	||	78	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyGyroJerkMag_mean__ )	||	79	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyGyroJerkMag_std__ )	||	80	||	Numeric	||	[-0.99 to 0.99] 

avg( fBodyBodyGyroJerkMag_meanFreq__ )	||	81	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_tBodyAccMean_gravity_ )	||	82	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_tBodyAccJerkMean__gravityMean_ )	||	83	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_tBodyGyroMean_gravityMean_ )	||	84	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_tBodyGyroJerkMean_gravityMean_ )	||	85	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_X_gravityMean_ )	||	86	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_Y_gravityMean_ )	||	87	||	Numeric	||	[-0.99 to 0.99] 

avg( angle_Z_gravityMean_ )	||	88	||	Numeric	||	[-0.99 to 0.99] 


