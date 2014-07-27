### DATA DICTIONARY - Getting and Cleaning Data Project

Subject 	int
	Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
	
Activity 	chr
	Identifies the activity that was performed for each sample.  The values are:
	"WALKING"
	"WALKING_UPSTAIRS"
	"WALKING_DOWNSTAIRS"
	"SITTING"
	"STANDING"
	"LAYING"
	
[NOTE:  For all following features, the value is computed per activity and subject.  
Also, the data in these features have no units because they are normalized in the range [-1,1].]

Time Body Accel Mean X 		num
	Average of time domain-based body motion component of acceleration signal in X axis
	
Time Body Accel Mean Y 		num
	Average of time domain-based body motion component of acceleration signal in Y axis
	
Time Body Accel Mean Z 		num
	Average of time domain-based body motion component of acceleration signal in Z axis
	
Time Body Accel Std Dev X 		num
	Standard deviation of time domain-based body motion component of acceleration signal in X axis
	
Time Body Accel Std Dev Y 		num
	Standard deviation of time domain-based body motion component of acceleration signal in Y axis
	
Time Body Accel Std Dev Z 		num
	Standard deviation of time domain-based body motion component of acceleration signal in Z axis
	
Time Gravity Accel Mean X 		num
	Average of time domain-based gravitational component of acceleration signal in X axis
	
Time Gravity Accel Mean Y 		num
	Average of time domain-based gravitational component of acceleration signal in Y axis
	
Time Gravity Accel Mean Z 		num
	Average of time domain-based gravitational component of acceleration signal in Z axis
	
Time Gravity Accel Std Dev X 		num
	Standard deviation of time domain-based gravitational component of acceleration signal in X
	
Time Gravity Accel Std Dev Y 		num
	Standard deviation of time domain-based gravitational component of acceleration signal in Y
	
Time Gravity Accel Std Dev Z	 	num
	Standard deviation of time domain-based gravitational component of acceleration signal in Z
	
Time Body Accel Jerk Mean X 		num
	 Average of time domain-based rate at which body motion component acceleration changes in X axis
	 
Time Body Accel Jerk Mean Y	 		num
	 Average of time domain-based rate at which body motion component acceleration changes in Y axis
	
Time Body Accel Jerk Mean Z 		num
	 Average of time domain-based rate at which body motion component acceleration changes in Z axis
	
Time Body Accel Jerk Std Dev X 		num
	 Standard deviation of time domain-based rate at which body motion component acceleration changes in X axis
	
Time Body Accel Jerk Std Dev Y 		num
	 Standard deviation of time domain-based rate at which body motion component acceleration changes in Y axis
	
Time Body Accel Jerk Std Dev Z 		num
	 Standard deviation of time domain-based rate at which body motion component acceleration changes in Z axis
	
Time Body Gyro Mean X 		num
	Average of time domain-based body motion component of gyroscope signal in X axis
	
Time Body Gyro Mean Y 		num
	Average of time domain-based body motion component of gyroscope signal in Y axis
	
Time Body Gyro Mean Z 		num
	Average of time domain-based body motion component of gyroscope signal in Z axis
	
Time Body Gyro Std Dev X 		num
	Standard deviation of time domain-based body motion component of gyroscope signal in X axis

Time Body Gyro Std Dev Y 		num
	Standard deviation of time domain-based body motion component of gyroscope signal in Y axis

Time Body Gyro Std Dev Z 		num
	Standard deviation of time domain-based body motion component of gyroscope signal in Z axis

Time Body Gyro Jerk Mean X 		num
	Average of time domain-based rate at which body motion component of gyroscopic acceleration changes in X axis
	
Time Body Gyro Jerk Mean Y 		num
	Average of time domain-based rate at which body motion component of gyroscopic acceleration changes in Y axis

Time Body Gyro Jerk Mean Z 		num
	Average of time domain-based rate at which body motion component of gyroscopic acceleration changes in Z axis

Time Body Gyro Jerk Std Dev X 		num
	Standard deviation of time domain-based rate at which body motion component of gyroscopic acceleration changes in X axis

Time Body Gyro Jerk Std Dev Y 		num
	Standard deviation of time domain-based rate at which body motion component of gyroscopic acceleration changes in Y axis
	
Time Body Gyro Jerk Std Dev Z 		num
	Standard deviation of time domain-based rate at which body motion component of gyroscopic acceleration changes in Z axis

Time Body Accel Mag Mean 		num
	Average of time domain-based magnitude of body motion component of acceleration signal

Time Body Accel Mag Std Dev 		num
	Standard deviation of time domain-based magnitude of body motion component of acceleration signal
	
Time Gravity Accel Mag Mean 		num
	Average of time domain-based magnitude of gravitational component of acceleration signal

Time Gravity Accel Mag Std Dev 		num
	Standard deviation of time domain-based magnitude of gravitational component of acceleration signal

Time Body Accel Jerk Mag Mean 		num
	Average of time domain-based magnitude of body motion component of acceleration changes

Time Body Accel Jerk Mag Std Dev 		num
	Standard deviation of time domain-based magnitude of body motion component of acceleration changes
	
Time Body Gyro Mag Mean 		num
	Average of time domain-based magnitude of body motion component of gyroscopic acceleration signal

Time Body Gyro Mag Std Dev 		num
	Standard deviation of time domain-based magnitude of gyroscopic acceleration signal

Time Body Gyro Jerk Mag Mean 		num
	Average of time domain-based magnitude of body motion component of gyroscopic acceleration changes
	
Time Body Gyro Jerk Mag Std Dev 	num
	Standard deviation of time domain-based magnitude of body motion component of gyroscopic acceleration changes
	
Freq Body Accel Mean X 		num
	Average of frequency domain-based body motion component of acceleration signal in X axis
	
Freq Body Accel Mean Y 		num
	Average of frequency domain-based body motion component of acceleration signal in Y axis
	
Freq Body Accel Mean Z 		num
	Average of frequency domain-based body motion component of acceleration signal in Z axis
	
Freq Body Accel Std Dev X 		num
	Standard deviation of frequency domain-based body motion component of acceleration signal in X axis
	
Freq Body Accel Std Dev Y 		num
	Standard deviation of frequency domain-based body motion component of acceleration signal in Y axis
	
Freq Body Accel Std Dev Z 		num
	Standard deviation of frequency domain-based body motion component of acceleration signal in Z axis
	
Freq Body Accel Jerk Mean X 	num
	Average of frequency domain-based rate at which body motion component acceleration changes in X axis
	
Freq Body Accel Jerk Mean Y 	num
	Average of frequency domain-based rate at which body motion component acceleration changes in Y axis
	
Freq Body Accel Jerk Mean Z 	num
	Average of frequency domain-based rate at which body motion component acceleration changes in Z axis
	
Freq Body Accel Jerk Std Dev X 		num
	Standard deviation of frequency domain-based rate at which body motion component acceleration changes in X axis
	
Freq Body Accel Jerk Std Dev Y 		num
	Standard deviation of frequency domain-based rate at which body motion component acceleration changes in Y axis
	
Freq Body Accel Jerk Std Dev Z 		num
	Standard deviation of frequency domain-based rate at which body motion component acceleration changes in Z axis
	
Freq Body Gyro Mean X 		num
	Average of frequency domain-based body motion component of gyroscope signal in X axis
	
Freq Body Gyro Mean Y 		num
	Average of frequency domain-based body motion component of gyroscope signal in Y axis
	
Freq Body Gyro Mean Z 		num
	Average of frequency domain-based body motion component of gyroscope signal in Z axis
	
Freq Body Gyro Std Dev X 		num
	Standard deviation of frequency domain-based body motion component of gyroscope signal in X axis
	
Freq Body Gyro Std Dev Y 		num
	Standard deviation of frequency domain-based body motion component of gyroscope signal in Y axis
	
Freq Body Gyro Std Dev Z 		num
	Standard deviation of frequency domain-based body motion component of gyroscope signal in Z axis
	
Freq Body Accel Mag Mean 		num
	Average of frequency domain-based magnitude of body motion component of acceleration signal
	
Freq Body Accel Mag Std Dev 		num
	Standard deviation of frequency domain-based magnitude of body motion component of acceleration signal
	
Freq Body Accel Jerk Mag Mean 		num
	Average of frequency domain-based magnitude of body motion component of acceleration changes
	
Freq Body Accel Jerk Mag Std Dev 		num
	Standard deviation of frequency domain-based magnitude of body motion component of acceleration changes
	
Freq Body Gyro Mag Mean 	num
	Average of frequency domain-based magnitude of body motion component of gyroscopic acceleration signal
	
Freq Body Gyro Mag Std Dev 		num
	Standard deviation of frequency domain-based magnitude of gyroscopic acceleration signal
	
Freq Body Gyro Jerk Mag Mean 		num
	Average of frequency domain-based magnitude of body motion component of gyroscopic acceleration changes
	
Freq Body Gyro Jerk Mag Std Dev		num
	Standard deviation of frequency domain-based magnitude of body motion component of gyroscopic acceleration changes	
